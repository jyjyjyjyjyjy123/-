<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<h1>Map<small>지도 클릭 이벤트 + 마커 조작</small> </h1>
	<div>	
		<div id="map" style="width:768px;height:400px;"></div> <!-- 지도를 담을 영역 만들기 -->
	</div>
	<div>
		<div class="message"></div>
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
		
		//이벤트 추가 > 카카오 맵 방식으로..
		//kakao.maps.event.addListener(지도객체, 이벤트, 콜백함수);
		kakao.maps.event.addListener(map, 'click', function(evt){
			//이벤트 관련 정보 > evt 객체 제공
			//alert(evt.latLng);
			let msg = `클릭한 위치는 (\${evt.latLng.getLat()},\${evt.latLng.getLng()}) 입니다.`;
			
			$('.message').text(msg);
			
			//마커 등록하기
			
			$.ajax({
				type: 'POST',
				url: '/toy/map/addmarker.do',
				data: {
					lat: evt.latLng.getLat(),
					lng: evt.latLng.getLng()
				},
				dataType:'json',
				success: function(result) {
					if (result.result == 1) {
						const m1 = new kakao.maps.Marker({
							position: new kakao.maps.LatLng(evt.latLng.getLat(),evt.latLng.getLng())
						});
						m1.setMap(map);
					} else {
						alert('failed');
					}
				},
				error: function(a,b,c) {
					console.log(a,b,c);
				}
			});
		});


		//DB > 좌표 > 마커 출력
		<c:forEach items="${list}" var="dto" varStatus="status">
			const m${status.count} = new kakao.maps.Marker({
				position: new kakao.maps.LatLng(${dto.lat},${dto.lng})
			});
			m${status.count}.setMap(map);
		</c:forEach>
		
		
	</script>
</body>
</html>