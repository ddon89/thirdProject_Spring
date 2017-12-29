<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/slick-theme.css">
	<link rel="stylesheet" href="resources/css/slick.css">
	<link rel="stylesheet" href="resources/css/animate.css">
	<link rel="stylesheet" href="resources/css/main.css">
	<link rel="stylesheet" href="resources/css/loading.min.css">
	
	<script type="text/javascript" src="resources/js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="resources/js/three.min.js"></script>
    <script type="text/javascript" src="resources/js/jquery.min.js"></script>
    <script type="text/javascript" src="resources/js/cannon.js"></script>
 	<script type="text/javascript" src="resources/js/newPointerLockControls.js"></script>
     
    <script type="text/javascript" src="resources/js/CopyShader.js"></script>
    <script type="text/javascript" src="resources/js/FXAAShader.js"></script>
    <script type="text/javascript" src="resources/js/EffectComposer.js"></script>
    <script type="text/javascript" src="resources/js/RenderPass.js"></script>
    <script type="text/javascript" src="resources/js/ShaderPass.js"></script>
    <script type="text/javascript" src="resources/js/OutlinePass.js"></script>
	<!------------------------------------------------------------------- -->
	<script src="resources/js/modernizr.js"></script>
	<script src="resources/js/jquery-1.12.0.min.js"></script>
	<script src="resources/js/map.js"></script>
	<script src="resources/js/slick.min.js"></script>
	<script src="resources/js/script.js"></script>
	<script src="resources/js/counter.js"></script>
	<script src="resources/js/jquery.lightbox_me.js"></script>
	<script src="resources/js/jquery.loading.min.js"></script>
	<!------------------------------------------------------------------ -->
    
   	<style type="text/css">
   	#progress_message{
	  display: block;
	  background: rgba(40,43,52,0.9);
	  box-shadow: 0 5px 10px #000;
	  position: absolute;
	  top: 0px;
	  left: 347px;
	  width: 300px;
	  height: 60px;
	  z-index: 201;
	  font-family: Arial;
	  font-weight: bold;
	  color: #fff;
	  font-size: 14px;
	  text-shadow: 0 1px 0 #000;
	  padding: 10px;
	  padding-top: 15px;
	  border-bottom-left-radius: 3px;
	  border-bottom-right-radius: 3px;
	}

		.progress{
		  width: 291px;
		  height: 30px;
		  border-radius: 2px;
		  background: #20222A;
		  padding: 1px;
		  margin: 0;
		  border: 1px solid #1A1C21;
		  box-shadow: inset 0 0 3px #222, 0 1px 0 #484848;
		}
		
		#progress_bar{
		  width: 0;
		  height: 25px;
		  border-radius: 3px;
		  border: 1px solid #2A2B2F;
		  background: -webkit-linear-gradient(top, rgba(54,168,233,1) 0%,rgba(17,126,210,1) 100%); /* Chrome10+,Safari5.1+ */
		  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#36a8e9', endColorstr='#117ed2',GradientType=0 ); /* IE6-9 */
		  box-shadow: inset 0 1px 0 #4dc8db, 0 1px 0 #393C45;
		  padding: 0;
		  margin: 0;
		}
		
		#prog_status{
		  position: absolute;
		  top: 10px;
		  left: 0px;
		  width: 100%;
		  text-align: center;
		  color: #fff;
		  font-weight: bold;
		  font-size: 12px;
		  font-family: Arial;
		  text-shadow: 0 -1px 0 #191A1E;
		}
   		#loding_div {
   		  position:absolute; 
		  left: 40%; top: 85%;
		  width: 294px;
  		  height: 33px;
		  background: #000;
		  border: 2px solid #000;
		}
        body {
            margin: 0;
            overflow: hidden;
            background: #efefef;
            font: 30px sans-serif;
        }
        
        * {
            margin: 0;
            padding: 0;
            border: 0;
        }
        
        #instructions {
            /* margin-top:20%; */
            width: 100%;
            height: 50%;
        
            display: -webkit-box;
            display: -moz-box;
            display: box;
        
            -webkit-box-orient: horizontal;
            -moz-box-orient: horizontal;
            box-orient: horizontal;
        
            -webkit-box-pack: center;
            -moz-box-pack: center;
            box-pack: center;
        
            -webkit-box-align: center;
            -moz-box-align: center;
            box-align: center;
            
            background-image: url("resources/rustybase.jpg");
            color: #ffffff;
            text-align: center;
            
            cursor: pointer;
        }
        
		#trick{
		color: black;
		/*  background: #eef2f7;*/
			background: rgba(31, 34, 37, 0.6);
		   -webkit-border-radius: 6px;
		   border: 1px solid #536376;
		   -webkit-box-shadow: rgba(0,0,0,.6) 0px 2px 12px;
		   -moz-box-shadow: rgba(0,0,0,.6) 0px 2px 12px;
		   padding: 14px 22px;
		   width: 450px;
		   position: relative;
		   display: none;
        }
        <!-- /*###########################################################################################09.28동운*/ -->
		#ending{
        color: black;
        /*  background: #eef2f7;*/
        background: rgba(31, 34, 37, 0.1);
        -webkit-border-radius: 6px;
        border: 1px solid #536376;
        -webkit-box-shadow: rgba(0,0,0,.6) 0px 2px 12px;
        -moz-box-shadow: rgba(0,0,0,.6) 0px 2px 12px;
        padding: 14px 22px;
        width: 850px;
        position: relative;
        display: none;
        }
		#inventory {
		color: black;
		/*  background: #eef2f7;*/
			background: rgba(31, 34, 37, 0.6);
		   -webkit-border-radius: 6px;
		   border: 1px solid #536376;
		   -webkit-box-shadow: rgba(0,0,0,.6) 0px 2px 12px;
		   -moz-box-shadow: rgba(0,0,0,.6) 0px 2px 12px;
		   padding: 14px 22px;
		   width: 850px;
		   position: relative;
		   display: none;
		}
		
		#detail {
			color: black;
		/*  background: #eef2f7;*/
			background: rgb(31, 34, 37);
		   -webkit-border-radius: 6px;
		   border: 1px solid #536376;
		   -webkit-box-shadow: rgba(0,0,0,.6) 0px 2px 12px;
		   -moz-box-shadow: rgba(0,0,0,.6) 0px 2px 12px;
		   padding: 14px 22px;
		   width: 500px;
		   position: relative;
		   display: none;
		}
		.col-xs-4 {
			width: 120px;
		}
		.col-sm-3 {
			margin: 30px;
			padding: 30px;
			width: 100%;
		}
		.view {
		    width: 140px;
		    height: 150px;
		    margin: 10px 0px 0 10px;
		    float: left;
		    border: 10px;
		    overflow: hidden;
		    position: relative;
		    text-align: center;
		    cursor: default;
		}
		.view .mask, .view .content {
		    width: 130px;
		    height: 140px;
		    position: absolute;
		    overflow: hidden;
		    top: 0;
		    left: 0
		}
		.view img {
		    display: block;
		    position: relative
		}
		.view h2 {
		    text-transform: uppercase;
		    color: #fff;
		    text-align: center;
		    position: relative;
		    font-size: 10px;
		    padding: 5px;
		    background: rgba(0, 0, 0, 0.8);
		    margin: 10px 0 0 0
		}
		.view p {
		    font-family: Georgia, serif;
		    font-style: italic;
		    font-size: 12px;
		    position: relative;
		    color: #fff;
		    padding: 10px 20px 20px;
		    text-align: center
		}
		.view a.itemSelect {
			font-size: 10px;
		    display: inline-block;
		    text-decoration: none;
		    padding: 7px 14px;
		    background: #000;
		    color: #fff;
		    text-transform: uppercase;
		    box-shadow: 0 0 1px #000
		}
		.view a.itemSelect:hover {
		    box-shadow: 0 0 5px #000
		}
		.view-first img { 
		    transition: all 0.2s linear;
		}
		/* .view-first .mask {
		    opacity: 0;
		    background-color: rgba(18, 0, 0, 0.24); 
		    transition: all 0.4s ease-in-out;
		} */
		.view-first h2 {
		    transform: translateY(-100px);
		    opacity: 0;
		    transition: all 0.2s ease-in-out;
		}
		.view-first p { 
		    transform: translateY(100px);
		    opacity: 0;
			transition: all 0.2s linear;
		}
		.view-first a.itemSelect{
		    opacity: 0;
			transition: all 0.2s ease-in-out;
		}
		.view-first:hover img { 
			transform: scale(1.1);
		} 
		.view-first:hover .mask { 
			opacity: 1;
		}
		.view-first:hover h2,
		.view-first:hover p,
		.view-first:hover a.itemSelect {
		    opacity: 1;
		    transform: translateY(0px);
		}
		.view-first:hover p {
		    transition-delay: 0.1s;
		}
		.view-first:hover a.itemSelect {
		    transition-delay: 0.2s;
		}
		#inventoryTable {
			margin : 0 auto;
		}
		/* #inventoryTable tbody {
			background-image: url("resources/images/inventory5.png");
		} */
		#inventoryTable td {
			width: 170.4px;
			height: 176.4px;
		}
		.invenTD {
			background-color: rgba(255, 255, 255, 0.4);
			border-width:5px;  
		    border-style:solid;
		}
		#selectedItemImg {
			padding: 30px 30px 0 0;
			height: 270px;
		}
		#selectedItemName {
			height: 50px;
		}
		#selectedItemUserid{
			height: 50px;
		}
		#selectedItemDetail{
			height: 50px;
		}
		.da-price-container { 
			height: 50px;
			padding: 0;
			margin: 0;  
		    background: rgba(31, 34, 37, 0.4);
		}
		.da-booking-date {
			margin-top: 0px; 
		}
        
        @import url(https://fonts.googleapis.com/css?family=BenchNine:700);
        .snip1535 {
            background-color: #c47135;
            border: none;
            color: #ffffff;
            cursor: pointer;
            display: inline-block;
            font-family: 'BenchNine', Arial, sans-serif;
            font-size: 1em;
            font-size: 22px;
            line-height: 1em;
            margin: 15px 40px;
            outline: none;
            padding: 12px 40px 10px;
            position: relative;
            text-transform: uppercase;
            font-weight: 700;
        }
        .snip1535:before,
        .snip1535:after {
            border-color: transparent;
            -webkit-transition: all 0.25s;
            transition: all 0.25s;
            border-style: solid;
            border-width: 0;
            content: "";
            height: 24px;
            position: absolute;
            width: 24px;
        }
        .snip1535:before {
            border-color: #c47135;
            border-right-width: 2px;
            border-top-width: 2px;
            right: -5px;
            top: -5px;
        }
        .snip1535:after {
            border-bottom-width: 2px;
            border-color: #c47135;
            border-left-width: 2px;
            bottom: -5px;
            left: -5px;
        }
        .snip1535:hover,
        .snip1535.hover {
            background-color: #c47135;
        }
        .snip1535:hover:before,
        .snip1535.hover:before,
        .snip1535:hover:after,
        .snip1535.hover:after {
            height: 100%;
            width: 100%;
        }

		#instructions {
			width: 100%;
			height: 100%;
			display: -webkit-box;
			display: -moz-box;
			display: box;
			-webkit-box-orient: horizontal;
			-moz-box-orient: horizontal;
			box-orient: horizontal;
			-webkit-box-pack: center;
			-moz-box-pack: center;
			box-pack: center;
			-webkit-box-align: center;
			-moz-box-align: center;
			box-align: center;
			color: #ffffff;
			text-align: center;
			cursor: pointer;
		}
		#inventory {
		color: black;
		/*  background: #eef2f7;*/
			background: rgb(31, 34, 37);
		    -webkit-border-radius: 6px;
		    border: 1px solid #536376;
		    -webkit-box-shadow: rgba(0,0,0,.6) 0px 2px 12px;
		    -moz-box-shadow: rgba(0,0,0,.6) 0px 2px 12px;
		    padding: 14px 22px;
		    width: 1000px;
		    position: relative;
		    display: none;
		}
		.col-xs-4 {
			width: 120px;
		}
		.col-sm-3 {
			margin: 30px;
			padding: 30px;
			width: 100%;
		}
		.view {
		    width: 150px;
		    height: 150px;
		    margin: 10px;
		    float: left;
		    border: 10px solid #fff;
		    overflow: hidden;
		    position: relative;
		    text-align: center;
		    box-shadow: 1px 1px 2px #e6e6e6;
		    cursor: default;
		    background: #fff url(../images/bgimg.jpg) no-repeat center center
		}
		.view .mask, .view .content {
		    width: 140px;
		    height: 140px;
		    position: absolute;
		    overflow: hidden;
		    top: 0;
		    left: 0
		}
		.view img {
		    display: block;
		    position: relative
		}
		.view h2 {
		    text-transform: uppercase;
		    color: #fff;
		    text-align: center;
		    position: relative;
		    font-size: 10px;
		    padding: 5px;
		    background: rgba(0, 0, 0, 0.8);
		    margin: 10px 0 0 0
		}
		.view p {
		    font-family: Georgia, serif;
		    font-style: italic;
		    font-size: 12px;
		    position: relative;
		    color: #fff;
		    padding: 10px 20px 20px;
		    text-align: center
		}
		.view a.itemSelect {
			font-size: 10px;
		    display: inline-block;
		    text-decoration: none;
		    padding: 7px 14px;
		    background: #000;
		    color: #fff;
		    text-transform: uppercase;
		    box-shadow: 0 0 1px #000
		}
		.view a.itemSelect:hover {
		    box-shadow: 0 0 5px #000
		}
		.view-first img { 
		    transition: all 0.2s linear;
		}
		.view-first .mask {
		    opacity: 0;
		    background-color: rgba(18, 0, 0, 0.24); 
		    transition: all 0.4s ease-in-out;
		}
		.view-first h2 {
		    transform: translateY(-100px);
		    opacity: 0;
		    transition: all 0.2s ease-in-out;
		}
		.view-first p { 
		    transform: translateY(100px);
		    opacity: 0;
			transition: all 0.2s linear;
		}
		.view-first a.itemSelect{
		    opacity: 0;
			transition: all 0.2s ease-in-out;
		}
		.view-first:hover img { 
			transform: scale(1.1);
		} 
		.view-first:hover .mask { 
			opacity: 1;
		}
		.view-first:hover h2,
		.view-first:hover p,
		.view-first:hover a.itemSelect {
		    opacity: 1;
		    transform: translateY(0px);
		}
		.view-first:hover p {
		    transition-delay: 0.1s;
		}
		.view-first:hover a.itemSelect {
		    transition-delay: 0.2s;
		}
		#inventoryTable td {
			width: 180px;
			height: 180px;
		}
		#chattingMessage{
			color: pink;
			width: 420px;
			background: transparent;
		}
		#chattingScreen{
			color: pink;
			overflow: auto;
			width: 500px;
			height: 150px;
		}
		#chatting_block{
			position: relative;
			left: 0px;
			top: -350px;
			z-index: 2;
		}
		
		.btn-3d {
		    position: relative;
		    display: inline-block;
		    font-size: 22px;
		    padding: 20px 40px;
		    color: #F16B6F;
		    margin: 20px 10px 10px;
		    border-radius: 6px;
		    text-align: center;
		    transition: top .01s linear;
		    text-shadow: 0 1px 0 rgba(0,0,0,0.15);
		}
		.btn-3d.green {
		   background-color: #3C3530;
		   box-shadow: 0 0 0 1px #3C3530 inset,
		               0 0 0 2px rgba(255,255,255,0.15) inset,
		               0 8px 0 0 rgba(60, 53, 48, .7),
		               0 8px 0 1px rgba(0,0,0,.4),
		               0 8px 8px 1px rgba(0,0,0,0.5);
		}
		.btn-3d.green:active {
		   box-shadow: 0 0 0 1px #3C3530 inset,
		               0 0 0 2px rgba(255,255,255,0.15) inset,
		               0 0 0 1px rgba(0,0,0,0.4);
		}
		.btn-3d:active {
		   top: 9px;
		}
		.btn-3d.green:hover  {
		    color: #F16B6F;
			background-color: #C5C6B6;
		}
		.fa-facebook-f:before, .fa-facebook:before {
		    content: "X";
		}
		element.style {
		}
		.da-footer-social a {
		    float: left;
		    color: #F16B6F;
		    background: #3C3530;
		}
		.da-text-container-room {
			width: 100px;
			
		}
		.da-text-container {
			background-color: rgba(255, 255, 255, .4);
		    min-height: 150px;
		    padding-top: 0px;
		}
		.da-text-container-room ul li:before {
			text-align: left;
			font-size: 18px;
		}
		.pe-7s-users:before  {
			content: "1";
		}
		.pe-7s-stopwatch:before {
			content: "2";
		}
		.pe-7s-map-marker:before {
			content: "3";
		}
		#closeDiv{
			float: right;
			valign: top;
			padding: 0 0 10px 0;
		}
		#pentagon {
		    position: absolute;
		    z-index: 3;  left: 1%;
		    top:20%;
		    width: 90px;
		    border-width: 50px 18px 0;
		    border-style: solid;
		    border-color: #562F2F transparent;
		}
		#pentagon:before {
			z-index: 3;  left: 1%;
			top:20%;
		    content: "";
		    position: absolute;
		    height: 0;
		    width: 0;
		    top: -85px;
		    left: -18px;
		    border-width: 0 45px 35px;
		    border-style: solid;
		    border-color: transparent transparent #562F2F;
        }
        /* ############0927 동운 */
		.da-price-title da-price-title-room{
			padding-top:5px; 
		}
        /* ############0927 동운 */
        .number_view{
			color: white;
			font:bold;
		}
		#ending_size{
			width: 1%;
			height: 0.001%;
		}
		#mapTable{
		width: 10%;
		height: 10%;
		text-align: center;
		margin: 0 auto;
		border-collapse: separate;
		}
		.table_data{
		border: 5px solid #323232;
		border-style:ridge;
		width: 25%;
		height: 20%;
		padding: 10px;
		color: white;
		font: bold;
		margin-top: 10%;
		border-spacing: 10px 10px;
		}
		
	</style>
</head>

<body>
	<input type = "hidden" id ="map_no" value = "${map_no}">
	<div id="block" style="position: relative; z-index: 2;">
		<div id="instructions" style="position: relative; z-index: 2;"> 
			<a class="snip1535" href="#" onclick="InventoryTest()">Inventory</a>
			<a class="snip1535" id="playButton">Play!!!</a>
			<a class="snip1535" href="#" onclick="logout()">Escape</a>
			Timer : <span id="timer" ></span>
		</div>	
	</div>
	<!-- ## 0926 수정 정동운 -->
	<p id="pentagon"></p>
	<a href="#" id="change_status"><img id ="status_bar" src="resources/images/img_hand.png" data-item_name="default" style=" position: absolute ; top:18%; left: 2%; z-index: 4; width : 55px; height : 55px;  float: left; "></a>
    <!-- ################### -->
    <div ID="inventory" class="da-contact-container">
    	<table style="border-spacing: 50px; border-collapse: separate;">
    		<tr >
    			<td>
					<table id="inventoryTable" border="1" >
					<tr>
						<td class="invenTD"></td>
						<td class="invenTD"></td>
						<td class="invenTD"></td>
					</tr>
					<tr>
						<td class="invenTD"></td>
						<td class="invenTD"></td>
						<td class="invenTD"></td>
					</tr>
					<tr>
						<td class="invenTD"></td>
						<td class="invenTD"></td>
						<td class="invenTD"></td>
					</tr>
					</table>		
				</td>
				<td style="width:270px;" rowspan="3">
					<div class="da-booking-date" style="width:280px; height:544.8px">
						<!-- <p class="da-booking-date-number">07</p> -->
						<img id="selectedItemImg" style="margin-left: 6%; height: 60%;">
						<div class="da-availabe-date">
							<p class="da-price-title da-price-title-room" id="selectedItemName"></p>
							<p class="da-price-title da-price-title-room" id="selectedItemUserid"></p>
						</div>
						<button class="da-btn da-margin-top-30 hvr-sweep-to-right" id="detailBtn" onclick="detail()">Detail</button>
						<button class="da-btn da-margin-top-30 hvr-sweep-to-right" onclick="toolSelect()">Select</button>
					</div>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="detail">
		<table>
			<tr>
				<td>
					<img src="" id="canvas_img" />
				</td>
				<td>
					<div class="da-footer-social clearfix" id="closeDiv">
						<a class="close sprited" href="#"><i class="fa fa-facebook"></i></a>
					</div>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="trick">
		<div id="puzzle_temp"> 
			<table>
				<tr>
					<td><a class="btn-3d green" data-num="1" style="font-weight: 300;">1</a></td>
					<td><a class="btn-3d green" data-num="2" style="font-weight: 300;">2</a></td>
					<td><a class="btn-3d green" data-num="3" style="font-weight: 300;">3</a></td>
					<td colspan="3">
						<div class="da-footer-social clearfix" id="closeDiv">
							<a id="close_x" class="close sprited" href="#"><i class="fa fa-facebook"></i></a>
						</div>
					</td>
				</tr>
				<tr>
					<td><a class="btn-3d green" data-num="4" style="font-weight: 300;">4</a></td>
					<td><a class="btn-3d green" data-num="5" style="font-weight: 300;">5</a></td>
					<td><a class="btn-3d green" data-num="6" style="font-weight: 300;">6</a></td>
				</tr>
				<tr>
					<td><a class="btn-3d green" data-num="7" style="font-weight: 300;">7</a></td>
					<td><a class="btn-3d green" data-num="8" style="font-weight: 300;">8</a></td>
					<td><a class="btn-3d green" data-num="9" style="font-weight: 300;">9</a></td>
				</tr>
			</table>
		</div>
	</div>
	
	
	<div id="ending" style="width: 50%;height: 70%; background-color: black;">
      <!-- <div id="ending_size"> -->
         <div id="show_map" style="width: 100%">
         <table style="width: 100%;">
            <tr>
               <td width="50%">
               <table id="mapTable" class="table_data" style="width: 100%; height: 60%; padding: 10px 10px 10px 10px; ">
                  <tr class="table_data">
                     <th class="table_data">천년의 탈출</th>
                  </tr>
                  <tr class="table_data" style="width: 100%;">
                     <td id="map_img" class="table_data" style="width: 1%; height:1%; overflow-x:hidden;overflow-y:hidden"><img src="resources/images/background01.jpg"></td>
                     <td class="table_data" style="border: 0; width: 1%; height:1%; overflow-x:hidden;overflow-y:hidden"></td>
                  </tr>
                  <tr class="table_data">
                     <td id="map_explain" class="table_data" style="width: 5%; height:5%; overflow-x:hidden;overflow-y:hidden">
                        <textarea rows="3" cols="50" readonly="readonly" style="font-size:small; resize: none; background-color:black; font: white;">이방은 완규가 설계한 만든 방으로서, 시간내에 탈출하지 못할시 완규에게 살해당할 것이다</textarea> 
                     </td>
                  </tr>
               </table>
               </td>
               <td colspan="3" width="50%">
                  <img src="resources/images/${user.profile}.png" style="width: 120px; height: 120px; margin-left: 30%;">
                  <img src="resources/images/clear.png" style="width: 200px; height: 100px; margin-left: 17%; margin-top: 22%;">
                  <button class="da-btn da-margin-top-30 hvr-sweep-to-right" style="margin-left: 37%; margin-top: 17%;" onclick="after_ending()">Main</button>
               </td>
            </tr>
         </table>
         <!-- </div> -->
      </div>
   </div>
	<!-- /*###########################################################################################09.28동운*/ -->
	
	
	<div id = "canvas"></div>
	
    <script>
    'use strict';
   
    // Global
    var scene, scene2, camera, camera2, centerPointer,
        renderer, subLight, mainLight, bulbGeometry, bulbMat,
        ground, ceiling, analyser;
    
    var sphereShape, sphereBody, world,
	    physicsMaterial, walls=[], balls=[],
	    ballMeshes=[], boxes=[], boxMeshes=[];
    
    var controls,
        time = performance.now();
    
    var objects = [],
	    raycasterFromCamera,
	    cameraIntersections,
	    mouseCursor = new THREE.Vector3( 0, 0, 0 ),
	    selectedObjects = [];
    
    var block = document.getElementById( 'block' ),
        instructions = document.getElementById( 'instructions' ),
        playButton = document.getElementById( 'playButton' ),
    	puzzle_temp = document.getElementById( 'puzzle_temp' ),
        close_x = document.getElementById( 'close_x' );
    var outlinePass, // 아웃라인 변수
        composer,
        effectFXAA;
    
    var tooltipBox, canvas, context, text_texture; // 툴팁박스 변수
    var mesh1, meshes, mesh_door;
    var move_hand = 0.01;

    //##################################0927동운
    var original_safe = false, opened_safe= false;
    var original_door= false, opened_door= false;
    //group
    var group_ana, group;
    
    //screen loader
    var load_loading = new THREE.TextureLoader();
	var texture = load_loading.load( 'resources/images/house.jpg' );
	var loadingScreen = {
        scene : new THREE.Scene(),
        camera : new THREE.PerspectiveCamera(90, window.innerWidth/window.innerHeight, 0.1, 1000),
        box : new THREE.Mesh(
            new THREE.BoxGeometry(12,9,0.5),
            new THREE.MeshBasicMaterial({map:texture})
        )
    };// 로딩스크린객체를 잡기위한 객체를 생성 
    
    var RESOURCES_LOADED = false;
    // boolean 변수를 추가하여 언제 소스가 준비 되었는지 추적할 수 있다.
    var LOADING_MANAGER = null;
    var json_object = [
        'wall'
    ];
    var json_object_context = {
        wall:{
            name:'resources/json/wall_door.json',
            position:'1,-5,255',
            scale:'28,25,50'
        }               
    };
    
    // 포인터락컨트롤
    var pointerLockControls = function() {
        console.log( "포인터락 시작" );
        var havePointerLock = "pointerLockElement" in document ||
                              "mozPointerLockElement" in document ||
                              "webkitPointerLockElement" in document;
        if ( havePointerLock ) {
            var element = document.body;
            var pointerLockChange = function( e ) {
                if ( document.pointerLockElement === element ||
                     document.mozPointerLockElement === element ||
                     document.webkitPointerLockElement === element ) {
                    controls.enabled = true;
                    block.style.display = "none";
                } else {
                    controls.enabled = false;
                    block.style.display = "-webkit-box";
                    block.style.display = "-moz-box";
                    block.style.display = "box";
                    instructions.style.display = "";
                } //end if-else
            } //end pointerLockChange
            
            var pointerLockError = function( event ) {
                instructions.style.display = "";
            } //end pointerLockError
                
            document.addEventListener( "pointerlockchange", pointerLockChange, false );
            document.addEventListener( "mozpointerlockchange", pointerLockChange, false );
            document.addEventListener( "webkitpointerlockchange", pointerLockChange, false );
            
            document.addEventListener( "pointerlockerror", pointerLockError, false );
            document.addEventListener( "mozPointerlockerror", pointerLockError, false );
            document.addEventListener( "webkitPointerlockerror", pointerLockError, false );
            
            playButton.addEventListener( "click", function( event ) {
            	controls.enabled = true;
            	block.style.display = "none";
                instructions.style.display = "none";
                element.requestPointerLock = element.requestPointerLock ||
                                             element.mozRequestPointerLock ||
                                             element.webkitRequestPointerLock;
                element.requestPointerLock();
                event.preventDefault();
                event.stopPropagation();
            }, false );
            
            close_x.addEventListener( "click", function( event ) {
                $('#close_x').trigger('click');
                controls.enabled = true;
                block.style.display = "none";
                instructions.style.display = "none";
                element.requestPointerLock = element.requestPointerLock ||
                                             element.mozRequestPointerLock ||
                                             element.webkitRequestPointerLock;
                element.requestPointerLock();
                event.preventDefault();
                event.stopPropagation();
            }, false );
        } else {
            console.log( "띠용" );
        } // end if 
    }; // 포인터락컨트롤
    
    // Setup Physics World
    function initCannon() {
        world = new CANNON.World();
        world.quatNormalizeSkip = 0;
        world.quatNormalizeFast = false;
        
        var solver = new CANNON.GSSolver();

        world.defaultContactMaterial.contactEquationStiffness = 1e7;
        world.defaultContactMaterial.contactEquationRelaxation = 4;
        
        solver.iterations = 8;
        solver.tolerance = 0.2;
        var split = true;
        if(split) {
            world.solver = new CANNON.SplitSolver(solver);
        } else {
            world.solver = solver;
        }
        
        world.gravity.set(0,-150, 0);
        world.broadphase = new CANNON.NaiveBroadphase();

        // Create a slippery material (friction coefficient = 0.0)
        physicsMaterial = new CANNON.Material("groundMaterial");
//         physicsMaterial.friction = 1.0;
        var physicsContactMaterial = new CANNON.ContactMaterial (
                                     physicsMaterial,
                                     physicsMaterial,
										0.0,
										0.0
                                     );
        // We must add the contact materials to the world
        world.addContactMaterial(physicsContactMaterial);
        
        var mass = 40, radius = 3.0;
        // sphereShape = new CANNON.Cylinder ( radius, radius, 10, 8 );
        sphereShape = new CANNON.Sphere(radius);
        sphereBody = new CANNON.Body( {
                                        mass: mass,
                                        shape: sphereShape,
                                        material: physicsMaterial,
                                        type: CANNON.Body.DYNAMIC
                                    } );
        sphereBody.inertia.set( 0, 0, 0 );
        sphereBody.invInertia.set( 0, 0, 0 );
        sphereBody.position.set(0,10,0);
        sphereBody.linearDamping = 0.9;
        sphereBody.id = "cameraObj";
        world.addBody(sphereBody);
        
        // Create a plane
        var groundShape = new CANNON.Plane();
        var groundBody = new CANNON.Body( { 
                                            mass: 0,
                                            shape: groundShape,
                                            material: physicsMaterial
                                        } );
        groundBody.quaternion.setFromAxisAngle(new CANNON.Vec3(1, 0, 0),-Math.PI/2);
        world.addBody(groundBody);
    }
    
    // 이니셜라이즈 - 씬 생성
    var init = function() {
        console.log( "초기화시작" );
        var fftSize = 2048;
        
        // 렌더러 생성
        renderer = new THREE.WebGLRenderer( );
        renderer.physicallyCorrectLights = true;
        renderer.gammaInput = true;
        renderer.gammaOutput = true;
        renderer.shadowMap.enabled = true;
        renderer.toneMapping = THREE.ReinhardToneMapping;
        renderer.setPixelRatio( window.devicePixelRatio );
        renderer.setSize( window.innerWidth, window.innerHeight );
        renderer.autoClear = false;
//         document.body.appendChild( renderer.domElement );
        $("#canvas").append(renderer.domElement);
        
        scene = new THREE.Scene;
        // 마우스커서용 Scene
        scene2 = new THREE.Scene();
        
        // 카메라 생성
        camera = new THREE.PerspectiveCamera(
            60,
            window.innerWidth / window.innerHeight,
            0.1,
            1000
        );
        camera.position.y = 30;
        camera.lookAt( scene.position );
        scene.add( camera );
        
        // 마우스커서용 카메라
        camera2 = new THREE.OrthographicCamera(
                  - window.innerWidth / 2,
                  window.innerWidth / 2,
                  window.innerHeight / 2,
                  - window.innerHeight / 2,
                  1,
                  10 );
        camera2.position.z = 10;
        
        // 마우스 잠금
        controls = new PointerLockControls( camera, sphereBody );
        scene.add( controls.getObject() );
        
        raycasterFromCamera = new THREE.Raycaster();
        raycasterFromCamera.far = 20;  
        
        // BGM 재생
        /* var audioLoader = new THREE.AudioLoader();
        var listener = new THREE.AudioListener();
        camera.add( listener );
        var audio = new THREE.Audio( listener );
        audioLoader.load( 'resources/music/bell.mp3', function( buffer ) {
            audio.setBuffer( buffer );
            audio.setLoop( true );
            audio.play();
        });
        analyser = new THREE.AudioAnalyser( audio, fftSize ); */
        
        group = new THREE.Group();
        scene.add( group );
        
        // Tooltip 캔버스 생성
        canvas = document.createElement('canvas');
        context = canvas.getContext('2d');
        context.font = "Bold 20px Arial";
        context.fillStyle = "rgba(0,0,0,0.95)";
        context.fillText('Hello, world!', 0, 20);
        
        text_texture = new THREE.Texture(canvas);
        text_texture.minFilter = THREE.LinearFilter;
        text_texture.needsUpdate = true;
        
        // Create Tooltip
        var spriteMaterial = new THREE.SpriteMaterial( { map: text_texture } );
        tooltipBox = new THREE.Sprite( spriteMaterial );
        tooltipBox.scale.set(200, 100, 1.0);
        tooltipBox.position.set( 10, -20, 0 );
        scene2.add( tooltipBox );
        
        // 로딩 스크린을 set up 시켜 놓는다.
        loadingScreen.box.position.set(0,0,5);
        loadingScreen.camera.lookAt(loadingScreen.box.position);
        loadingScreen.scene.add(loadingScreen.box);
        
        $("#progress_bar").width("0px");
        LOADING_MANAGER = new THREE.LoadingManager();
        LOADING_MANAGER.onProgress = function (item, loaded, total) {//onProgress는  매번 리소스가 로딩되는 트리거이다  onload는 모든 소스가 로딩된 것
            console.log(item, loaded, total);
            console.log((loaded / total * 100) + '%');
            $("#progress_bar").css("width",(loaded / total * 100) + '%');
            if ((loaded / total * 100) === 100) {
            	$("#loding_div").remove();
			}
        };
        
        LOADING_MANAGER.onLoad = function () {
            console.log("loaded all resources");
            RESOURCES_LOADED = true;
            onResourcesLoaded(); // 리소스가 로드 되었을때의 트리거 함수를 생성
        }
        
        // 조명 생성
        bulbGeometry = new THREE.SphereGeometry( 5, 16, 8 );
        bulbMat = new THREE.MeshStandardMaterial( {
            emissive: 0xffffee,
            emissiveIntensity: 1,
            color: 0x000000
        });
        mainLight = new THREE.SpotLight ( 0x333333, 25, 2500 ); // 붉은 조명 입힘
        mainLight.add( new THREE.Mesh( bulbGeometry, bulbMat ) );
        mainLight.position.set( 0, 150, 0 );
        mainLight.castShadow = true;
        mainLight.shadow.mapSize.width = 1024;
        mainLight.shadow.mapSize.height= 1024;
        mainLight.angle = Math.PI/2.2;
        scene.add( mainLight );
        
        subLight = new THREE.HemisphereLight(0x660033, 0xCC0000, 0.04);
        scene.add( subLight );
        
        // 손 생성
        var loader = new THREE.JSONLoader(LOADING_MANAGER);
            loader.load('resources/json/hand/handd.json', function(geomerty, mat){
            mesh1 = new THREE.Mesh(geomerty,mat[0]);
            mesh1.scale.set(0.7,0.7,0.7);
            mesh1.position.set(controls.getObject().position.x + 3, controls.getObject().position.y - 14, controls.getObject().position.z-7);
            mesh1.rotation.y -= 0.5;
            mesh1.rotation.x += 0.5;
            camera.add(mesh1);
        });
        
        // 화면에 커서 생성
        function createHUDSprite ( texture ) {
            var material = new THREE.SpriteMaterial( {map: texture} );
            var sWidth = material.map.image.width,
                sHeight = material.map.image.height;
            var centerSprite = new THREE.Sprite( material );
            centerSprite.scale.set( sWidth / 5,
                                    sHeight / 5,
                                    1 );
            scene2.add( centerSprite );
            centerSprite.position.set( 0, 0, 1 );
        };
        centerPointer = new THREE.TextureLoader().load(
                        "resources/images/hand.png",
                        createHUDSprite );
        
        //################0927 동운 수정
        var black_Hole = new THREE.Mesh(
            new THREE.BoxGeometry( 32, 5, 145 ),
            new THREE.MeshLambertMaterial( {color: 0x000000} )
            );
            black_Hole.position.set(0,0,250.4);
            black_Hole.rotation.x += Math.PI/2;
            scene.add(black_Hole); 
        //###########################################
        
        
        var loader = new THREE.TextureLoader(LOADING_MANAGER);

        // 천장 생성
        ceiling = new THREE.Mesh (
                  new THREE.BoxGeometry( 500, 1, 500 ),
                  new THREE.MeshLambertMaterial( { color: 0xA9A9A9 } )
        );
        ceiling.receiveShadow = true;
        ceiling.position.y = 101;
        scene.add( ceiling );
         
        var texture2 = loader.load("resources/blood.png");
        ceiling.material.map = texture2;
        texture2.repeat.set(8, 8);
        texture2.wrapS = THREE.RepeatWrapping;
        texture2.wrapT = THREE.RepeatWrapping;
        
        objectLoad(LOADING_MANAGER);

        
        // 외곽선 추가
        composer = new THREE.EffectComposer( renderer );
        var renderPass = new THREE.RenderPass( scene, camera );
        composer.addPass( renderPass );
        outlinePass = new THREE.OutlinePass( new THREE.Vector2 ( window.innerWidth, window.innerHeight ), scene, camera );
        outlinePass.pulsePeriod = 2;
        composer.addPass( outlinePass );
        effectFXAA = new THREE.ShaderPass(THREE.FXAAShader);
        effectFXAA.uniforms['resolution'].value.set( 1 / window.innerWidth,
                                                     1 / window.innerHeight );
        effectFXAA.renderToScreen = true;
        composer.addPass( effectFXAA );
        
        window.addEventListener( 'keypress', function(e) {
            var keycode = event.keyCode;
            if ( keycode == 92 ) {
            	sphereBody.position.set(0,10,0);
            }	
        }, false );
        
        window.addEventListener( 'resize', onResize, false );
        window.addEventListener( 'click', function ( event ) {
            event.preventDefault();
            event.stopPropagation();
            if ( selectedObjects.length > 0 ) {
                console.log ( selectedObjects[0] );
                //0924 은지 추가
                var item_name = selectedObjects[0].name;
                var status = $("#status_bar").attr('data-item_name');
                if(status == 'default') {
					$.ajax({
						url: "selectClickItem"
						, method : "POST"
						, data : "item_name=" + item_name
						, success : function(resp) {
                        /*###########################################################################################09.28동운*/
	                       /*  if (resp.type === 'tool') {
	                            show_ending(resp);
	                        } */
	                        if(resp.type == "trick") {
								solvedCheck(resp);
							}
							else if(resp.retractable == "true"){
                                // 물건을 인벤토리에 넣는다.
                                var intersect = cameraIntersections[0];
                                put_item_inven( selectedObjects );
                                scene.remove( intersect.object );
                                intersect.object.geometry.dispose();
                                intersect.object.material.dispose();
                                objects.splice ( objects.indexOf( intersect.object ), 1 );
                                cameraIntersections = [];
                                selectedObjects = [];
                            }
                        }
                    });
                } else {
                	$.ajax({
    					url: "selectMatchingItem"
    					, method : "POST"
    					, data : "item_name=" + status
    					, success : function(resp) {
    							if(resp.matching_item == 6) {
    								show_ending(resp);
    							}
    						}
    					});
                }
            }
        }, false );
    }; // end init
    
    function solvedCheck(resp) {
    	$.ajax({
			url: "solvedCheck",
			method: "post",
			data: "SI_no=" + resp.si_no,
			success: function(resp2){
		    	if (resp2.solved == 'false') {
					controls.enabled = false;
					block.style.display = "-webkit-box";
					block.style.display = "-moz-box";
					block.style.display = "box";
					instructions.style.display = "";
					document.exitPointerLock();
	                event.preventDefault();
	                event.stopPropagation();
					if(resp.trick_type == "password") {
						$("#trick").lightbox_me({centered: true, preventScroll: true, onLoad: function() {
                            $("#trick").find("input:first").focus();
							}
						});
						trick_password(resp2); 
					}
		    	}
			}
    	});
    }
    
    // 오브젝트 로드
    function objectLoad() {
    	console.log( "Object Load" );
    	console.log($("#map_no").val());
    	var mapno = $("#map_no").val();
		$.ajax({
			url : "getSavedItems"
			, type : "POST"
			, data : "map_no=" + mapno
			, dataType : "json"
			, success : function(resp){
				var modelPath = "resources/json/model/";
				var texturePath = "resources/json/texture/";
				var arr = [];
				$.each(resp, function(index, item){
					console.log(item);
					if(item.setting){
						console.log("setting is true");
						console.log(index, item);
						
						//set 된 아이템의 이름이 plane일 경우
						if(item.item_name == "plane"){
							//position 이지만 사실은 texture 경로
							var textureimg = item.position;
							
							var find = new THREE.Mesh(new THREE.PlaneGeometry(500,500,100,100)
							, new THREE.MeshLambertMaterial({color : 0xffffff}));
							find.rotation.x = Math.PI * -0.5;
							find.position.set(0,0,0);
							scene.add(find);
							console.log(find);
							
							//텍스쳐 로드
							var texture = THREE.ImageUtils.loadTexture(textureimg);
							var mat = new THREE.MeshLambertMaterial({
								map : texture
							});
							find.material = mat;
						}
						else if(item.item_name == "Player"){
							//Player일 때
							var p = JSON.parse(item.position);
							console.log(p);
							console.log("world", world);
							
							find = world.bodies.find(function(item){
								return item.id == "cameraObj";
							});
							
							console.log("cameraObj", find);
							
							find.position.set(p.x, p.y, p.z);
						}
						else{
							//item.name != plane일 때
							$.ajax({
								url : "getJSON"
								, data : "no=" + item.item_no
								, dataType : "json"
								, async : false
								, success : function(resp){
									var mesh;
									var loader = new THREE.JSONLoader(LOADING_MANAGER);
									var json = resp.json_file;
									loader.load(modelPath + json+".json", function(geom, mat){
										//scene 안에서의 위치, 스케일, 회전도 설정
										var p = JSON.parse(item.position);
										var r = JSON.parse(item.rotation);
										var s = resp.scale;
// 										console.log(p, r, s, json);
										var mesh = new THREE.Mesh(geom, mat[0]);
										mesh.name = item.item_name;
										mesh["item_no"] = resp.no;
										mesh["item_type"] = resp.type;
										mesh["canvas_availability"] = resp.canvas_availability;
										
										//물리 충돌 작업
										var box3 = new THREE.Box3().setFromObject(mesh);
										
										var boxCenter = box3.getCenter();
										var x = resp.type == "wall" ? 20 : Math.abs(boxCenter.x)*s*5;
										var y = Math.abs(boxCenter.y)*s;
										var z = resp.type == "wall" ? 10 : Math.abs(boxCenter.z)*s*3;
										
										console.log(item.item_name,x,y,z);
										
										mesh.position.set(p.x, p.y, p.z);
										mesh.rotation.set(r._x, r._y, r._z);
										mesh.scale.set(s, s, s);
										
										//물리 확인하기 위해서 보이는 박스 만들기
// 										var c = new THREE.Mesh(new THREE.BoxGeometry(x, y, z),
// 												new THREE.MeshBasicMaterial({color : 0x00fff0}));
// 										c.position.set(p.x, p.y, p.z);
// 										console.log(item.item_name, c);
// 										scene.add(c);
										
										//json의 TYPE 를 나눠서 물리엔진 적용 : 가구, 데코, 벽일 때만
										var boundingBox, halfExtents, boxShape, boxBody;
										
										halfExtents = new CANNON.Vec3(x, y, z);
										boxShape = new CANNON.Box( halfExtents );
										boxBody = new CANNON.Body( { mass: 0 } );
										boxBody.addShape( boxShape );
										
										boxBody.position.set(p.x, p.y, p.z);
										var rot = new CANNON.Vec3(0,1,0);
										boxBody.quaternion.setFromAxisAngle( rot, r._y);
										
										world.addBody(boxBody);
										scene.add(mesh);
										boxes.push(boxBody);
										boxMeshes.push(mesh);
										
									});
								}
							});
						}
					}else console.log("item.setting == false");
				});
			}
			, error : function(resp){
				console.log(resp);
			}
		});
    }  
    
    function onResourcesLoaded() {
        
    }
   
    // 자동 리사이즈
    var onResize = function() {
        camera.aspect = window.innerWidth / window.innerHeight;
        renderer.setSize( window.innerWidth, window.innerHeight );
        composer.setSize( window.innerWidth, window.innerHeight );
        effectFXAA.uniforms['resolution'].value.set(1 / window.innerWidth,
                                                    1 / window.innerHeight );
        
        camera2.left = - window.innerWidht / 2;
        camera2.right = window.innerWidht / 2;
        camera2.top = window.innerHeight / 2;
        camera2.bottom = - window.innerHeight / 2;
        
        camera.updateProjectionMatrix();
    };
    
    // 렌더
    var dt = 1/60;
    var render = function() {
        if (RESOURCES_LOADED == false) {
            requestAnimationFrame(render);
            
            renderer.render(loadingScreen.scene, loadingScreen.camera);
            return;
        }
        
        
        requestAnimationFrame( render );
        if ( controls.enabled ) { 
            world.step(dt);
            // Update box positions
            for(var i=0; i<boxes.length; i++){
                boxMeshes[i].position.copy(boxes[i].position);
                boxMeshes[i].quaternion.copy(boxes[i].quaternion);
            }
        }
     	// 손의 위아래 움직임
        var limit = 0.6
        if (move_hand < 0.3 ) {
            mesh1.position.y += 0.01;
            move_hand+=0.01;
        }
        if (move_hand > limit) {
            move_hand = 0.01;
        }
        if(move_hand >= 0.3){
            mesh1.position.y -= 0.01;
            move_hand+=0.01;
        }
        
        // 마우스 커서에서 Ray 발생.
        raycasterFromCamera.setFromCamera( mouseCursor, camera );
        cameraIntersections = raycasterFromCamera.intersectObjects( objects );
        
        
        // 인터섹션이 있는경우
        if ( cameraIntersections.length > 0 ) {
            selectedObjects = [];
            selectedObjects.push ( cameraIntersections[0].object );
            outlinePass.selectedObjects = selectedObjects; //outline
            
            /* if (selectedObjects[0].name == "공포의 액자") {
        	   
			} */
            
            // Tooltip Message
            context.clearRect(0,0,256,128);
            var message = selectedObjects[0].name;
            var metrics = context.measureText(message);
            var width = metrics.width;
            context.fillStyle = "rgba(0,0,0,0.95)"; // black border
            context.fillRect( 0,0, width+8,20+8);
            context.fillStyle = "rgba(255,255,255,0.95)"; // white filler
            context.fillRect( 2,2, width+4,20+4 );
            context.fillStyle = "rgba(0,0,0,1)"; // text color
            context.fillText( message, 4,20 );
            text_texture.needsUpdate = true;
        } else {
            outlinePass.selectedObjects = [];
            selectedObjects = [];
            
            context.clearRect(0,0,256,128);
            text_texture.needsUpdate = true;
        }
        
        controls.update( performance.now() - time );
        time = performance.now();

        renderer.clear();
        composer.render();
        renderer.clearDepth();
        renderer.render( scene2, camera2 );
    }; // end render

    $(function(){
	    pointerLockControls();
	    initCannon();
	    init();
	    render();
    });
    
    
    
	/*###############################################################################근짱 이은지 script###################################################  */
	
	/*##################근짱 부분######################*/
    
    function put_item_inven(selectedObjects) {
    	var item_name = selectedObjects[0].name;
		whenGetItem(item_name);
		
		if (item_name == "공포의 액자") {
		}
		
	    if (item_name == "학종이1") {
            console.log("야호 ~~");
 		}
	    
    	if (item_name == "학종이2") {
            console.log("야호 ~~");
 		}
    	
    	if (item_name == "학종이3") {
            console.log("야호 ~~");
 		}
    	
    	if (item_name == "문") {
            console.log("야호 ~~");
 		}
    	
    	if (item_name == "도끼") {
            console.log("야호 ~~");
 		}
    	
    	if (item_name == "자물쇠") {
            console.log("야호 ~~");
 		}
    	
    	if (item_name == "퍼즐") {
            console.log("야호 ~~");
 		}
    	
    	if (item_name == "열쇠") {
            console.log("야호 ~~");
        }
	}
    
    //물건 획득 시 로직
	function whenGetItem(item_name){
		$(function(){
			$.ajax({
				url : "whenGetItem"
				, method : "POST"
				, data : "item_name="+item_name+"&user_id=${user.id}"
				, success : function(){
				}//success
			});//ajax
		});//document
	}//whenGetItem
	
	
	//뒤로가기 막기
	history.pushState(null, null, location.href);
	window.onpopstate = function (event)
    {
        history.go(1);
    };//window.onpopstate
    
 	// 새로고침 막기
    window.onkeydown = function() {
        var kcode = event.keyCode;
        if(kcode == 116) event.returnValue = false;
    }//window.onkeydown
	
	$(function(){
		// WebSocket
		var nickname = "${nickname}";
		
		$(document).ready(function() {
			$("#textSend").click(function() {
				$("#chattingScreen").scrollTop($('#chattingScreen')[0].scrollHeight);
				sendMessage();
			});//textSend
		});//ready
		
		var roomNum = '${room_no}';
		var nickname = '${user.nickname}';
		var userId = '${user.id}';
		var userPw = '${user.pw}';
	
		var ws = new WebSocket("ws://" + window.location.host + "/escape/echo");
		ws.onmessage = onMessage;
		ws.onopen = function() {
			//들어왔다 라는 신호를 보낸다.
			ws.send(roomNum + "|roomNum|" + userId + "|userId|" + userPw + "|userPw|");
			//여기서 시작!!!! 시험해봐야함.
			$("#chattingScreen").append(nickname+ " 님 접속! <br />");
		}//onopen
		ws.onclose = onClose;
	
		//### 근택 변경 0924
		function sendMessage() {
			if($("#chattingMessage").val() == '') return;
			ws.send(roomNum + "*" + $("#chattingMessage").val());
		}//sendMessage

		//### 근택 변경 0924
		function onMessage(evt) {
			var data = evt.data;
			if(data == '|Enter|') return;
			if(data.includes('|whenGetItem|')){
				scene.remove(scene.remove(scene.getObjectByName(data.replace('|whenGetItem|', ''))));
				return;
			}//if
			
			$("#chattingScreen").append(data + "<br>");
		}//onMessage
	
		function onClose(evt) {
			$("#chattingScreen").append("연결 끊김");
		}//onClose
		
		// 0921 변경#### 아래 2개 메소드 추가
		// text 입력창에서 입력 후 엔터키 누르면 내용이 입력되고 text창에 쓰여져 있는 내용은 삭제
		$('#chattingMessage').keyup(function(e){
			if(e.keyCode == 13){
				$('#textSend').trigger('click');
				$(this).val('');
				return;
			}//if
		});//chattingMessage
		
		// 엔터키 눌렀을 때 채팅방에 커서 생김
		$('body').keyup(function(e) {
			if(e.keyCode == 13){
				$('#chattingMessage').focus();
				return;
			}//if
		});//body
		//###############################0926 정동운
		$('#change_status').click(function () {
			$("#status_bar").attr('src','resources/images/img_hand.png');
			$("#status_bar").attr('data-item_name', 'default');
		});
		//###############################0926 정동운
	});//main
	
	function goBack(){
		window.onpopstate=function(){};
		history.go(-2);
	}//goBack
	
	 //timer
    var startTime = Date.now();
    var interval = setInterval ( function() {
        var elapsedTime = Date.now() - startTime;
        // console.log((parseInt(((elapsedTime / 1000).toFixed(0)) / 60 % 60))); 
        var pad = function(x) { return (x < 10) ? "0"+x : x; };
        document.getElementById("timer").innerHTML = 
        	pad(parseInt(((elapsedTime / 1000).toFixed(0)) / (60*60))) + ":" +
        	pad(parseInt(((elapsedTime / 1000).toFixed(0)) / 60 % 60)) + ":" +
        	pad((elapsedTime / 1000).toFixed(0) % 60);
    }, 10);

    setTimeout( function() {
        alert("탈출에 실패하셨습니다. 게임을 종료합니다.");
        $(function(){
        	$('#goBackToMain_fm').submit();
        });
    }, 1800000); // 30분
    
    //logout
    function logout() {
		location.href = "logout";
	}
    
	/*##################이은지 부분######################*/
    
    var selected_SI_no;
	var selected_src;
	var object;
	
	function toolSelect() {
		$('#status_bar').attr('src',object.src);
		$('#status_bar').attr('data-item_name', object.item_name);
	}
	
	function trick_password(resp) {
	       var loader = new THREE.JSONLoader();
	      var answer = new Array();
	      var content = resp.content;
	      var arr = content.split("/");
	      var i = 0;
	      $(".btn-3d").on('click', function( event ) {
	         answer.push($(this).attr("data-num"));
	         i++;
	         
	         if(i >= arr.length)  {
	            var result = true;
	            $.each(answer, function(index, item) {
	               if(arr[index] != item) {
	                  result = false;
	               }
	            });
	            var sendData = {"canvas_no" : resp.canvas_no, "user_id" : '${user.id}', "room_no" : '${room_no}', "SI_no" : resp.si_no, "trick_no" : resp.trick_no};
	            if(result == true) {
	               if (resp.canvas_no == 0) {
	                  scene.remove(scene.remove(scene.getObjectByName("금고")));
	                     loader.load('resources/json/safe/open_locker.json', function(geomerty, mat){
	                        var halfExtents = new CANNON.Vec3( 35, 15, 35 );
	                        var boxShape = new CANNON.Box( halfExtents );
	                        
	                        var boxBody = new CANNON.Body( { mass: 0 } );
	                        boxBody.addShape( boxShape );
	                        
	                        mesh_door = new THREE.Mesh(geomerty,mat[0]);
	                        mesh_door.scale.set(10, 10, 10);
	                        mesh_door.position.set(30,0,35);
	                        boxBody.position.set(30,0,35);
	                        
	                        var rot = new CANNON.Vec3(0,1,0);
	                        boxBody.quaternion.setFromAxisAngle( rot, ( -Math.PI/2 ) );
	                        
	                        mesh_door.name = "금고";
	                        world.addBody(boxBody);
	                        scene.add( mesh_door );
	                        boxes.push(boxBody);
	                        boxMeshes.push(mesh_door);
	                        objects.push ( mesh_door );
	                    });
	               }
	               $.ajax({
	                  url : "whenSolvedPuzzle"
	                  , method : "GET"
	                  , data : sendData
	                  /* , error : function(){
	                     alert('whenSolvedPuzzle : error');
	                  } *///error
	               });//ajax
	               
	            }
	            else{
	                  $.ajax({
	                     url : "whenFailedPuzzle"
	                     , method : "GET"
	                     , data : sendData
	                  });//ajax
	               }//inner if-else
	            i = 0;
	            answer = new Array();
	             $('#close_x').trigger('click');
	         }
	         event.preventDefault();
	            event.stopPropagation();
	      });
	      
	   }//trick_password=74825529666262562562665662626256
	
   
    //inventory
	function InventoryTest() {
		$("#inventory").lightbox_me({centered: true, preventScroll: true, onLoad: function() {
			$.ajax({
				url: "inventory",
				method: "post",
				data: "room_no=${room_no}",
				success: /* function(resp) {
					$(resp).each(function(index, item) {
						alert(item.inven_no);
					});
				}// */setInventory
			});
		}});
	}
	
	function detail() {
		$("#canvas_img").attr("src", "resources/item/paper.png");
		$("#detail").lightbox_me({centered: true, preventScroll: true, onLoad: function() {
			$("#detail").find("input:first").focus();
			if(selected_SI_no != null) {
				$.ajax({
					url: "selectItemCanvas",
					method: "post",
					data: "SI_no=" + selected_SI_no,
					success: function(resp) {
						$("#canvas_img").attr("src", "resources/item/" + resp.img_file);
					}
				});
			}
			else {
				$("#canvas_img").attr("src", selected_src);
			}
		}});
	}
	
	function setInventory(resp) {		
		var setHTML = '';
		var i = 0;
		$("#inventoryTable tr:first td").each(function(index, item){
			$("#inventoryTable td").each(function(index, item) {
				var img = "";
				var item_name = "";
				var no = '';
				
				if(i >= resp.length) {
					return false;
				}
				
				if(resp[i].canvas_no == 0 || resp[i].canvas_no == null || resp[i].canvas_no == undefined) {
					img = resp[i].icon_file;
					item_name = resp[i].item_name;
					no = ' data-SI_no=' + resp[i].si_no;
				}
				else {
					img = resp[i].img_file;
					item_name = "canvas";
					no = ' data-canvas_no=' + resp[i].canvas_no;
				}
				setHTML += '<div class="view view-first">'
						+ '<img class="itemImg" src="resources/item/'+ img +'" />'
						+ '<div class="mask">'
							+'<h2 class="itemName" data-user_id=' + resp[i].user_id + ' data-inven_no=' + resp[i].inven_no + no + '>'
								+ item_name 
								+'</h2>'
							+ '<a href="#" class="itemSelect">Select</a>'
						+ '</div>'
						+ '</div>';
				$(this).html(setHTML);
				setHTML = '';
				i++;
			});
		});
		
		$(".itemSelect").on("click", function() {
			var src = $(this).parent().siblings('img').attr("src");
			var inven_no = $(this).siblings('h2').attr("data-inven_no");
			selected_SI_no = $(this).siblings('h2').attr("data-SI_no");
			selected_src = src;
			object = {"src" : src, "item_name" : $(this).siblings('h2').text()};
			
			if(selected_SI_no == null) {
			 	$.ajax({
					url: "matchingCanvas",
					method: "post",
					data: "inven_no=" + inven_no,
					success: function(resp) {
						if(resp.canvas_no == null) {
							$("#detailBtn").css("pointer-events", "none");
						}
					}
				});
			}	
			
			
			$("#selectedItemImg").attr("src", $(this).parent().siblings('img').attr("src"));
			$("#selectedItemName").text($(this).siblings('h2').text());
			$("#selectedItemUserid").text($(this).siblings('h2').attr("data-user_id")); 
		});
	}
	
	
	/*###########################################################################################09.28동운*/
	
    function show_ending(resp) {
    	/* var canvas = document.getElementById("myCanvas");
    	var context = canvas.getContext("2d");
    	context.font = "40pt Comic Sans MS";
    	context.fillStyle = "black"; */
    	
    	var content = resp.content;
    	controls.getObject().position.z = controls.getObject().position.z +10;
		controls.enabled = false;
		block.style.display = "-webkit-box";
		block.style.display = "-moz-box";
		block.style.display = "box";
		instructions.style.display = "";
		document.exitPointerLock();
		event.preventDefault();
        event.stopPropagation();
    	$("#ending").lightbox_me({centered: true, preventScroll: true, onLoad: function() {    	
    		/* $(this).html(draw3dText(context, "천년의 완규 탈출 성공!", 20, 120, 5)); */
    	}});
	};
    	
	
    
    function after_ending() {
        $('#goBackToMain_fm').submit();
    }
	
    </script>
    
    <div id="chatting_block">
		<div id="chattingScreen"></div><br />
		<input type="text" id="chattingMessage">
		<input type="button" id="textSend" value="SEND" style="background: #ffffff; background: rgba(255, 255, 255, 0.1);">
	</div>
	
	<form style="display: hidden;" action="login" method="POST" id="goBackToMain_fm">
        <input type="hidden" id="id" name="id" value="${user.id}">
        <input type="hidden" id="pw" name="pw" value="${user.pw}">
	</form>
    <!-- 로딩화면 -->
    <div id="loding_div">
 		<div class="progress">
            <div id="progress_bar">

    		</div>
            <div id="prog_status">
                Loading...
            </div>
  		</div>
	</div>
</body>
</html>