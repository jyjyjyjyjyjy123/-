<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//자바 영역
	int a = 10;
	int b = 20;
	int c = a + b;
	String name = "홍길동";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="300">
		<tr>
			<th>a</th>
			<th><%= a %></th>
		</tr>
		<tr>
			<th>b</th>
			<th><%= b %></th>
		</tr>
		<tr>
			<th>c</th>
			<th><%= c %></th>
		</tr>
		<tr>
			<th>name</th>
			<th><%= name %></th>
		</tr>
	</table>

</body>
</html>