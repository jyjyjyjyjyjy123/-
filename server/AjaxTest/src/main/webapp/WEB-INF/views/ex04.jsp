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

	<h1>Ajax 응답 데이터 형식</h1>
	
	<div>
		<h2>Text</h2>
		<input type="button" id="btn1" value="클릭">
		<div id="result1"></div>
	</div>
	<div>
		<h2>XML</h2>
		<input type="button" id="btn2" value="클릭">
		<div id="result2"></div>
	</div>
	<div>
		<h2>JSON</h2>
		<input type="button" id="btn3" value="클릭">
		<div id="result3"></div>
	</div>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
	<script>
	
		$('#btn1').click(function() {
			$.ajax({
				type: 'GET',
				url: '/ajax/ex04data.do',
				/* data: 'type=1', */
				data: 'type=2',
				//돌려받을 데이터 형식(text, xml, json)
				dataType: 'text',
				success: function(result) {
					//단일값
					//$('#result1').text(result);
					
					//다중값
					const list = result.split('\r\n');
					
					list.forEach(memo => {
						//alert(memo);
						
						const item = memo.split(',');
						
						$('#result1').append('<div>' + item[0] + '</div>');
						$('#result1').append('<div>' + item[1] + '</div>');
						$('#result1').append('<div>' + item[2] + '</div>');
						$('#result1').append('<br>');
						
					});
				},
				error: function(a, b, c) {
					console.log(a, b, c)
				}
				
			})
		});
		$('#btn2').click(function() {
			
			//단일값
			//다중값
			
			$.ajax({
				type:'GET',
				url: '/ajax/ex04data.do',
				//data: 'type=3',
				data: 'type=4',
				dataType: 'xml',
				success: function(result) {
					//단일값
					//alert($(result).find('name').text());
					/* 
					$('#result2').append('<div>번호: ' + $(result).find('seq').text() + '</div>');
					$('#result2').append('<div>이름: ' + $(result).find('name').text() + '</div>');
					$('#result2').append('<div>암호: ' + $(result).find('pw').text() + '</div>');
					$('#result2').append('<div>메모: ' + $(result).find('memo > memo').text() + '</div>');
					$('#result2').append('<div>날짜: ' + $(result).find('regdate').text() + '</div>');
					 */
					 
					//다중값
					//alert($(result).text());
					 
					//forEach((item, index) => {}) 동일 == 향상된 for문
					//인자리스트 순서 주의(forEach와 반대)
					$(result).find('list > memo').each((index, item) => {
						$('#result2').append('<div>번호: ' + $(item).find('seq').text() + '</div>');
						$('#result2').append('<div>이름: ' + $(item).find('name').text() + '</div>');
						$('#result2').append('<div>암호: ' + $(item).find('pw').text() + '</div>');
						$('#result2').append('<div>메모: ' + $(item).find('memo > memo').text() + '</div>');
						$('#result2').append('<div>날짜: ' + $(item).find('regdate').text() + '</div>');
						$('#result2').append('<hr>');
						 
					 });					
					
				},
				error: function(a, b, c) {
					console.log(a, b, c);
				}
			});
			
		});
		
		$('#btn3').click(function() {
			$.ajax({
				type: 'GET',
				url: '/ajax/ex04data.do',
				//data: 'type=5',
				data: 'type=6',
				dataType: 'json',
				success: function(result) {
					//단일값
					//result > {"seq": "33","name": "가나다","pw": "1234","memo": "배고프다23","regdate": "2023-10-24 12:25:13"}
					//alert(result.seq);
					/*
					$('#result3').append('<div>번호: '+result.seq+'</div>');
					$('#result3').append('<div>이름: '+result.name+'</div>');
					$('#result3').append('<div>암호: '+result.pw+'</div>');
					$('#result3').append('<div>메모: '+result.memo+'</div>');
					$('#result3').append('<div>날짜: '+result.regdate+'</div>');
					*/
					
					//다중값
					$(result).each((index, memo) => {
						//alert(memo.seq);
						$('#result3').append('<div>번호: '+memo.seq+'</div>');
						$('#result3').append('<div>이름: '+memo.name+'</div>');
						$('#result3').append('<div>암호: '+memo.pw+'</div>');
						$('#result3').append('<div>메모: '+memo.memo+'</div>');
						$('#result3').append('<div>날짜: '+memo.regdate+'</div>');
						$('#result3').append('<hr>');
						
					});
					
				},
				error: function(a,b,c) {
					console.log(a,b,c);
				}
			});
		});
	
	</script>
</body>
</html>