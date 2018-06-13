<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" >
	<link rel="icon" href="resources/balloons.png">
	<title>Pop-A-Balloon</title>
	<link rel="stylesheet" href="/resources/style.css" type="text/css">
		<link rel="stylesheet" href="/resources/skeleton.css" type="text/css">
	
    <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <script src="resources/scripts.js" type="text/javascript"></script>
</head>
	<body">
		<!-- BACKGROUND -->
        <div class="grass"></div>
        <div class="board"></div>
        <div class="cloud"></div>
        <div class="cloud"></div>
        <div class="cloud"></div>
        <!-- END BACKGROUD -->
        
       	<div style="background-color:white; display:inline-block;padding:30px;margin:auto auto;">
       		<form action="">
       		
	       		Login <input type="text">
	       		<br>
	       		Code <input type="text">
	       		<br>
	       		<input type="submit">
       		</form>
       	
       	
       	</div>
       	
       	<form action ="/test/generate" method="post">
        LOGIN: <input type = "text" name = "login">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit">
   		</form>	
        <c:out value="${code}"/>
        
	</body>
</html>