<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info="사원정보 조회"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원정보 조회</title>
<link rel="stylesheet"
	href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
</head>
<style type="text/css">
.btn {
	width: 100px;
	margin-left: 30px;
}

.main-div {
	max-width: 800px;
	width: auto;
}
</style>
<body>

	<div class="main-div">
		<select id="selDept">
			<option value="none">-부서번호-</option>
			
		</select> <input type="button" value="부서생성" id="btnDept" />
		<div>
			<div>
				<h2>사원정보</h2>
				<table id="empTab" class="table">
					<thead>
						<tr>
							<th>사원번호</th>
							<th>사원명</th>
							<th>직무</th>
							<th>입사일</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<script>
	$("#btnDept").click(function() {
		$.ajax({
			type: 'POST',
			url: '/interfaceproject/main/dept.do',
			dataType: 'json',
			success: function(result) {
				$('#selDept').html(''); //기존 내용 삭제
				$(result).each((index, item) => {
					$('#selDept').append(`
						<option value="\${item.id}">\${item.name}</option>
							`);
				});
			},
			error: function(a,b,c) {
				console.log(a,b,c);
			}
		});	
	});
	$("#selDept").change(function find() {
		let dept =$("#selDept").val();
		$.ajax({
			type: 'POST',
			url: '/interfaceproject/main/emp.do',
			data: 'id='+dept,
			dataType: 'json',
			success: function(result) {
				$('#empTab tbody').html(''); //기존 내용 삭제
				$(result).each((index, item) => {
					$('#empTab tbody').append(`
							<tr>
								<td>\${item.id}</td>
								<td>\${item.name}</td>
								<td>\${item.job}</td>
								<td>\${item.date}</td>
							</tr>
							`);
				});
			},
			error: function(a,b,c) {
				console.log(a,b,c);
			}
		});	
	});
</script>
</html>
