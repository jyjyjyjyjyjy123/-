<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Example</title>
<link rel="stylesheet" href="https://me2.do/5BvBFJ57">
</head>
<body>

	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	
	<!--  
		*** 주의
		1. method="POST"
		2. action="/컨텍스트명/login"
		3. id : name="username"
		3. pw : name="password"
	-->
	<form action="/spring/login" method="POST">
		<div>
			<input type="text" name="username" placeholder="ID" required>
		</div>
		<div>
			<input type="password" name="password" placeholder="Password" required>
		</div>
		<div>
			<button class="in">로그인</button>
		</div>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	</form>
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script>
	
	</script>
</body>
</html>