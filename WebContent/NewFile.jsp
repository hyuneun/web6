<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
#video { 
     position: absolute;
     top: 0px;
     left: 0px;
     min-width: 80%;
     min-height: 80%;
     width: auto;
     height: auto;
     z-index: -1;
     overflow: hidden;
}
</style>
</head>
<body>
<a href="http://www.naver.com"><i class="material-icons" style="font-size: 150px;color: red">&#xE195;</i></a>
 <video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      <source src="Driving.mp4">
</video> 
</body>
</html>