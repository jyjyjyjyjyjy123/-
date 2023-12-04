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
		2. action="/컨텍스트명/로그아웃 페이지"
	-->
	<form action="/spring/auth/mylogout.do" method="POST">
		<div>
			<button class="in">로그아웃</button>
		</div>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	</form>
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script>
	
	</script>
</body>
</html>