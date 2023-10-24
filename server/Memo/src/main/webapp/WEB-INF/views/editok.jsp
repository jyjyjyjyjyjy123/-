<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>

<style>

</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	<script>
		<%-- <% if ((int)request.getAttribute("result") == 1) { %>
		locatiton.href = '/memo/list.do;'
		<% } else {%>
		alert('실패');
		locatiton.href = '/memo/add.do;'
		<% } %> --%>
		
		<c:if test="${result == 1}">
			location.href = '/memo/view.do?seq=${seq}';			
		</c:if>
			
		<c:if test="${result == 0}">
			alert('실패');
			/* location.href = '/memo/add.do'; */
			history.back();
		</c:if>
		
		<c:if test="${result == 2}">
			alert('암호 틀림');
			history.back();
		</c:if>
	
		
	</script>
</body>
</html>