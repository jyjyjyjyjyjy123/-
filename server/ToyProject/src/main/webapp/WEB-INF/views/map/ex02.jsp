<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>
	
</style>
</head>
<body>
	<h1>Map<small>지도 좌표 이동하기 + 레벨 바꾸기</small> </h1>
	<div>	
	<div id="map" style="width:768px;height:400px;"></div> <!-- 지도를 담을 영역 만들기 -->
	</div>
	<hr>
	
	<div>
		<div>
			<input type="button" value="종각역으로 이동하기" id="btn1"><!-- 37.57033, 126.9831 -->
			<input type="button" value="역삼역으로 이동하기" id="btn2"><!-- 37.50072, 127.0364 -->
			<input type="button" value="잠실역으로 이동하기" id="btn3"><!-- 37.51343, 127.1002 -->
		</div>
		<div>
			<input type="button" value="확대" id="btn4">
			<input type="button" value="축소" id="btn5">
		</div>
		<div>
			<input type="button" value="이동 제어" id="btn6">
			<input type="button" value="확대/축소 제어" id="btn7">
		</div>
	</div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1e36c68ad00f345a585d2e60e5bfa6ac"></script> <!-- 실제 지도를 그리는 Javascript API를 불러오기 -->
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
	<script>
		const container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		const options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(37.49934, 127.0333), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
		const map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	//한독 > 37.49934, 127.0333
	//종각 > 37.57033, 126.9831
	//역삼 > 37.50072, 127.0364
	//잠실 > 37.51343, 127.1002
	
		$('#btn1').click(function() {
			const p1 = new kakao.maps.LatLng(37.57033, 126.9831);
			map.setCenter(p1);
		});
		$('#btn2').click(function() {
			const p1 = new kakao.maps.LatLng(37.50072, 127.0364);
			//map.setCenter(p1);
			map.panTo(p1);
		});
		$('#btn3').click(function() {
			const p1 = new kakao.maps.LatLng(37.51343, 127.1002);
			map.setCenter(p1);
		});
		$('#btn4').click(function() {
			map.setLevel(map.getLevel() - 1);
		});
		$('#btn5').click(function() {			
			map.setLevel(map.getLevel() + 1);
		});
		map.setDraggable(false);
		$('#btn6').click(function() {
			//토글 버튼(드래고 On/Off)
			if (map.getDraggable()){
				map.setDraggable(false);
				$(this).css('background-color', '#EFEFEF');
			} else {				
				map.setDraggable(true);
				$(this).css('background-color', 'gold');
			}
		});
		map.setZoomable(false);
		$('#btn7').click(function() {
			//토글 버튼(on/off)
			if (map.getZoomable()){
				map.setZoomable(false);
				$(this).css('background-color', '#EFEFEF');
			} else {
				map.setZoomable(true);
				$(this).css('background-color', 'gold');				
			}
		});
		
	</script>
</body>
</html>