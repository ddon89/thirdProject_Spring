<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width:device-width,initial-scale=1.0">
	<title>Home</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/slick-theme.css">
<link rel="stylesheet" href="resources/css/slick.css">
<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/loading.min.css"> <!-- CSS reset -->

<script src="resources/js/modernizr.js"></script>
<script src="resources/js/jquery-1.12.0.min.js"></script>
<script src="resources/js/map.js"></script>
<script src="resources/js/slick.min.js"></script>
<script src="resources/js/script.js"></script>
<script src="resources/js/counter.js"></script>
<script src="resources/js/jquery.lightbox_me.js"></script>
<script src="resources/js/jquery.loading.min.js"></script>

<!-- animsition.css -->
<link rel="stylesheet" href="resources/css/animsition.min.css">
<!-- animsition.js -->
<script src="resources/js/animsition.min.js"></script>

<style type="text/css">
	body{
		background-color: black;
	}
	.cd-user-modal {
	  visibility: hidden;
	  opacity: 0;
	  transition: opacity 0.3s, visibility 0.3s;
	} 
	.cd-user-modal.is-visible {
	  visibility: visible;
	  opacity: 1;
	}
	footer {
		margin-top: 30%;
	}
	#loginInfo {
		margin-top: 10%;
	}
	
	#btn_logout {
		text-align: center;
	}
	
	.da-btn da-booking-btn hvr-sweep-to-right-inverse {
		margin: 0 auto;
		margin-left: 50%;
	}
	#playListDiv {
		padding-bottom: 300px;
	}
	.col-sm-3{
		width: 50%;
	}
	.col-md-5{
		width: 30%;
	}
	#menu{
		margin-top: 15%;
		margin-left: 15%;
	}
	.da-bg-container{
		height: 100%;
	}
</style>


<script>
$(function(e) {
	/* $("body").data("hijacking", 'on');
	$("body").data("animation", 'gallery'); */
	$("#loginBtn").addClass("close sprited");
	if("${empty loginUser.profile}") {
        $("#login").lightbox_me({centered: true, preventScroll: true, onLoad: function() {
			$("#login").find("input:first").focus();
		}});
        //e.preventDefault();
	}
	else {
		$("#loginBtn").addClass("close sprited");
	}
	
	$(".mainImage").on('mousedown', function(event) {
		event.preventDefault();
	});
	
	$(".animsition").animsition({
	    inClass: 'fade-in-down-sm',
	    outClass: 'fade-out-down-sm',
	    inDuration: 1500,
	    outDuration: 800,
	    linkElement: '.animsition-link',
	    // e.g. linkElement: 'a:not([target="_blank"]):not([href^="#"])'
	    loading: true,
	    loadingParentElement: 'body', //animsition wrapper element
	    loadingClass: 'animsition-loading',
	    loadingInner: '', // e.g '<img src="loading.svg" />'
	    timeout: false,
	    timeoutCountdown: 5000,
	    onLoadEvent: true,
	    browser: [ 'animation-duration', '-webkit-animation-duration'],
	    // "browser" option allows you to disable the "animsition" in case the css property in the array is not supported by your browser.
	    // The default setting is to disable the "animsition" in a browser that does not support "animation-duration".
	    overlay : false,
	    overlayClass : 'animsition-overlay-slide',
	    overlayParentElement : 'body',
	    transition: function(url){ window.location.href = url; }
	});
	
});

function logout() {
	location.href = "logout";
}

function updateForm() {
	location.href = "updateForm";
}

function gotoEditor(){
	location.href = "createMap";
}

function makingRoomPopUp() {
	window.open("makingRoomPopUp?id=${user_id}", "Room Making Setting", 'width=400, height=600');
}

function goToRoomList(){
	location.href = "/escape/roomList?nickname=${user_nickname}";		
}

var sound_sw = true;
function pauseSound() { 
	var vid = document.getElementById("Sound"); 
	if(sound_sw){
	    vid.pause();
	    sound_sw = false;
	}else{
		vid.play();
	    sound_sw = true;
	}//if-else
}//pauseSound
</script>

</head>
<body>

<div 
  class="animsition"
  data-animsition-in-class="fade-in-down-sm"
  data-animsition-in-duration="1000"
  data-animsition-out-class="fade-out-down-sm"
  data-animsition-out-duration="800">

<header>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-1 col-md-2 col-sm-2 col-xs-5">
				<div class="da-header-logo-container">
					<a href="mainForm">
						<img src="resources/images/logo.png" alt="Escape Room" class="img-responsive">
					</a>
				</div>
			</div>
			<div class="col-lg-9 col-md-7 col-sm-7 col-xs-2 da-text-align-right">
				<div class="da-menu-button">
					<img src="resources/images/menu-icon.png" alt="Menu">
				</div>
				<nav>
					<ul class="da-menu">
						<li class="da-active-menu-link"><span class="da-hover-menu-line"></span>
							<a href="#">Home</a>
						</li>
						<li><span class="da-hover-menu-line"></span>
							<a href="#" onclick="updateForm()">Member Info</a>
						</li>
						<li><span class="da-hover-menu-line"></span><a href="faq.html">FAQ</a></li>
						<li class="da-active-menu-link"><span class="da-hover-menu-line"></span>
							<a href="#" onclick="logout()">Logout</a>
						</li>
						<li class="da-active-menu-link"><span class="da-hover-menu-line"></span>
							<a href="#" onclick="pauseSound()">Sound</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>
	<div class="da-bg-container">
		<div class="container">
			<h2 class="da-title-icon da-margin-bottom-0">Let the game begin</h2>
			
			<div class="da-positioned-block" id="loginInfo">
				<img src="resources/images/${loginUser.profile}.png" id="loginProfile" alt="Key">
				<p align="center" id="loginId">${loginUser.id}</p>
				<p align="center" id="loginNickname">${loginUser.nickname}</p><br/><br/><br/><br/><br/><br/>
			</div>
		</div>
		<div id="menu">
			<div class="col-md-5">
				<div class="da-step-container">
					<p class="da-step-title da-font-montserrat"><span class="da-red-text da-padding-right-15">01</span>
					<a href="#" onclick="gotoEditor()">Game Editor</a></p>
					<p>Logical problems and puzzles. No physical effort. Only wit and observation. Everything is in your head.</p>
				</div>
			</div>
			<div class="col-md-5">
				<div class="da-step-container">
					<p class="da-step-title da-font-montserrat"><span class="da-red-text da-padding-right-15">02</span>
					<a href="#" onclick="goToRoomList()">Game Room List</a></p>
					<p>Exactly 1 hour to find a way out and get out of the quest of the room, thinking all the fun and interesting puzzles on your heroic journey.</p>
				</div>
			</div>
			<div class="col-md-5">
				<div class="da-step-container">
					<p class="da-step-title da-font-montserrat"><span class="da-red-text da-padding-right-15">03</span>
					<a href="#" onclick="makingRoomPopUp()">Make Game Room</a></p>
					<p>This is an unforgettable adventure in the exciting world of mystery. Only positive emotions and vivid feeling for the entire company.</p>
				</div>
			</div>
		</div>
		
  	</div> 	
  	
</div>
<!-- <embed src="resources/music/24 - True.mp3" autostart="true" loop="true" volume="50" showcontrols='true' showtracker ='0'> -->
<!-- <embed src="resources/music/24 - True.mp3" mute="true" autostart="true" width="0" height="0" id="Sound"> -->
<audio id="Sound" autoplay="autoplay">
	<source src="resources/music/24 - True.mp3">
</audio>
</body>
</html>
