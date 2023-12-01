<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Example</title>
<link rel="stylesheet" href="https://me2.do/5BvBFJ57">
<style>

</style>
</head>
<body>
	<h1>WebSocket <small>chat</small></h1>
	
	<div>
		<div class="group">
			<label>대화명</label>
			<input type="text" name="name" id="name" class="short">
		</div>
	</div>
	
	<div>
		<button type="button" class="in">들어가기</button>
		<button type="button" class="in" data-name="이슬아">들어가기(이슬아)</button>
		<button type="button" class="in" data-name="신수정">들어가기(신수정)</button>
		<button type="button" class="in" data-name="이혜진">들어가기(이혜진)</button>
		<button type="button" class="in" data-name="최진희">들어가기(최진희)</button>
		<button type="button" class="in" data-name="이재용">들어가기(이재용)</button>
		<button type="button" class="in" data-name="이도훈">들어가기(이도훈)</button>
		<button type="button" class="in" data-name="김승섭">들어가기(김승섭)</button>
	</div>
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script>
		$('.in').click(function() {
			let name = $('#name').val();
			
			if ($(event.target).data('name') != null && $(event.target).data('name') != '') {
				name = $(event.target).data('name');
			}
			
			let child = window.open('/socket/chat.do', 'chat', 'width=405 height=515');
			
			//child.connect(name);
			child.addEventListener('load', function() {
				//자식창 다 뜨고 나면 발생
				child.connect(name);
			});
			$('.in').css('opacity', .5)
					.prop('disabled', true);
			$('#name').prop('read-only', true);
		})
	</script>
</body>
</html>