/**
 * minimap.js
 * author LSH
 * 2017.8.31
 */

	function initMinimap(){
		var saveJSON = {};
		var sceneJSON;
		var scene = new THREE.Scene(); 
		var loader = new THREE.SceneLoader();
		
		var camera = new THREE.PerspectiveCamera(60,200/200, 1, 1000);
		camera.position.set(0,50,0);
		camera.lookAt(scene.position);
//		console.log(camera);
		
		var minimaprenderer = new THREE.WebGLRenderer();
		minimaprenderer.setClearColor(0x000000, 1);
		minimaprenderer.setSize(200, 200);
		minimaprenderer.domElement.style.position = "absolute";
		minimaprenderer.domElement.style.left = "0px";
		minimaprenderer.domElement.style.bottom = "0px";
		
		var orbit = new THREE.OrbitControls(camera, minimaprenderer.domElmenet);
		
		$("#canvas").append(minimaprenderer.domElement);
		
		
		sceneJSON = JSON.parse(localStorage.getItem("savedScene"));
		checkJSON(sceneJSON.objects);
		
		
		render();
		
		function render(){
			orbit.update();
			minimaprenderer.render(scene, camera);
			requestAnimationFrame(render);
		}
		
		
		//LocalStorage의 정보가 변경되었을 경우, 이 함수를 실행해서 Scene를 업데이트한다.
		function callMapInfo(scene){
			mapno = $("#map_no").text();
			$.ajax({
				url : "getSavedItems"
				, type : "POST"
				, data : "map_no=" + mapno
				, dataType : "json"
				, success : function(resp){
					modelPath = "resources/json/model/";
					texturePath = "resources/json/texture/";
					var arr = [];
					$.each(resp, function(index, item){
						console.log(item);
						if(item.setting){
							console.log("setting is true");
							console.log(index, item);
							if(item.item_name == "plane"){
								//position 이지만 사실은 texture 경로
								textureimg = item.position;
								
								find = scene.children.find(function(item){
									return item.name == 'plane';
								});
								var texture = THREE.ImageUtils.loadTexture(textureimg);
								mat = new THREE.MeshLambertMaterial({
									map : texture
								});
								find.material = mat;
							}else{
								//item.name != plane일 때
								modelPath = "resources/json/model/";
								texturePath = "resources/json/texture/";
								$.ajax({
									url : "getJSON"
									, data : "no=" + item.item_no
									, dataType : "json"
									, async : false
									, success : function(resp){
										var mesh;
										var loader = new THREE.JSONLoader();
										json = resp.json_file;
										loader.load(modelPath + json+".json", function(geom, mat){
											p = JSON.parse(item.position);
											r = JSON.parse(item.rotation);
											s = resp.scale;
											console.log(p, r, s, json);
											mesh = new THREE.Mesh(geom, mat[0]);
											mesh.position.set(p.x, p.y, p.z);
											mesh.rotation.set(r._x, r._y, r._z);
											mesh.scale.set(s, s, s);
											mesh.name = item.item_name;
											mesh["item_no"] = resp.no;
											mesh["item_type"] = resp.type;
											mesh["canvas_availability"] = resp.canvas_availability;
											
											console.log(mesh);
											arr.push(mesh);
											count = arr.length;
											scene.add(mesh);
											MapEdit01.targetList.push(mesh);
											MapEdit01.targetGroup.push(mesh);
										}, texturePath);
									}
								});
							}
						}else console.log("item.setting == false");
					});
					console.log(MapEdit01.targetList);
					console.log(MapEdit01.targetGroup);
					console.log(arr);
				}
				, error : function(resp){
					console.log(resp);
				}
			});
		}
		
	}