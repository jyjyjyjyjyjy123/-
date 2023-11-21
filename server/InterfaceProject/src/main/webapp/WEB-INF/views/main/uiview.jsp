<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="사원정보 조회"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>사원정보 조회</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!--jQuery CDN-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@500&display=swap" rel="stylesheet">
<!-- Bootstrap icons-->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
   rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<style type="text/css">
.btn{
	width: 100px;
	margin-left: 30px;
}
.main-div{
	max-width: 800px;
	width: 800px;
	border: 1px solid #999999;
}
</style>
<script type="text/javascript">
/* $(function(){
	$("#btnDept").click(function(){
		$.ajax({
			url:"ajax_select_dept.jsp",
			type:"get",
			dataType:"json",
			error:function( xhr ){
				alert( xhr.status +" : " + xhr.statusText);
			},
			success:function( json ){
				if(!json.resultFlag){
				 alert("부서정보가 존재하지 않습니다.");
				 return;
				}//end if
				var selDept=document.getElementById("selDept");
				var jsonObj;
				for(var i=0; i < json.data.length ; i++){
					jsonObj=json.data[i];
					
					selDept.options[i+1]=new Option( jsonObj.dname, jsonObj.deptno);
				}//end for
			}
		});//ajax
				
	});//click
	
	$("#selDept").change(function(){
		let deptno=$("#selDept").val();
		if( deptno == "none"){
			return;			
		}//end if
		$.ajax({
			url:"ajax_select_emp.jsp",
			type:"get",
			data:"deptno="+deptno ,
			dataType:"json",
			error:function( xhr ){
				alert( xhr.status +" : " + xhr.statusText);
			},
			success:function( json ){
			var jsonObj;
			var outData="";			
			
			if(json.recordCnt == 0){
				outData="<tr><td>부서에 사원이 존재하지 않습니다.</td></tr>";
			}//end if
			
			for(var i=0; i < json.data.length ; i++){
				jsonObj=json.data[i];
			}//end for
			}
		});//ajax
		
	});//select
	
}); */
</script>
<body>

<div class="main-div">
	<select id="selDept">
		<option value="none">-부서번호-</option>
	</select>
	<input type="button" value="부서생성" id="btnDept"/>
<div>
<div>
	<h2>사원정보</h2>
	<table id="empTab" class="table">
	<thead>
	<tr>
		<th>사원번호</th><th>사원명</th><th>직무</th><th>입사일</th>
	</tr>
	</thead>
	<tbody></tbody>
	</table>
</div>
</div>
</div>
  
</body>
</html>
