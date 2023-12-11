<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>
<main>
	<div class="maindiv">
		<div>
			<div class="review-grid">
				<h2>${dto.hospitalname}</h2>
				<div class="social-icon-item">
					<button type="button" id="bookmark-button"
						class="bookmark-icon-link bi-star-fill"
						<c:forEach items="${bookmarkcount}" var="dto">
									<c:if test="${dto.userseq == '1'}">
										    style="color: yellow;"
									</c:if>
								</c:forEach>></button>
				</div>
			</div>
			<div class="hospital-info-grid">
				<c:if test="${dto.face == 'y' or dto.face == 'Y'}">
					<p class="box-content box-content-color">대면</p>
				</c:if>
				<c:if test="${dto.face == 'n' or dto.face == 'N'}">
					<p class="box-content">대면</p>
				</c:if>
				<c:if test="${dto.unface == 'y' or dto.unface == 'Y'}">
					<p class="box-content box-content-color">비대면</p>
				</c:if>
				<c:if test="${dto.unface == 'n' or dto.unface == 'N'}">
					<p class="box-content">비대면</p>
				</c:if>
				<c:if test="${dto.housecall == 'y' or dto.housecall == 'Y'}">
					<p class="box-content box-content-color">왕진</p>
				</c:if>
				<c:if test="${dto.housecall == 'n' or dto.housecall == 'N'}">
					<p class="box-content">왕진</p>
				</c:if>
				<c:if test="${dto.ishealthcheck == 'y' or dto.ishealthcheck == 'Y'}">
					<p class="box-content box-content-color">건강검진</p>
				</c:if>
				<c:if test="${dto.ishealthcheck == 'n' or dto.ishealthcheck == 'N'}">
					<p class="box-content">건강검진</p>
				</c:if>
				<c:if test="${dto.vaccination == 'y' or dto.vaccination == 'Y'}">
					<p class="box-content box-content-color">예방접종</p>
				</c:if>
				<c:if test="${dto.vaccination == 'n' or dto.vaccination == 'N'}">
					<p class="box-content">예방접종</p>
				</c:if>
				<c:if
					test="${dto.ishospitalnightcare == 'y' or dto.ishospitalnightcare == 'Y'}">
					<p class="box-content box-content-color">야간진료</p>
				</c:if>
				<c:if
					test="${dto.ishospitalnightcare == 'n' or dto.ishospitalnightcare == 'N'}">
					<p class="box-content">야간진료</p>
				</c:if>
				<c:if
					test="${dto.ishospitalholiday == 'y' or dto.ishospitalholiday == 'Y'}">
					<p class="box-content box-content-color">주말진료</p>
				</c:if>
				<c:if
					test="${dto.ishospitalholiday == 'n' or dto.ishospitalholiday == 'N'}">
					<p class="box-content">주말진료</p>
				</c:if>
			</div>
		</div>
		<hr>
		<div>
			<p>영업시간: ${dto.opentime} ~ ${dto.closetime}</p>
		</div>
		<div>
			<p>휴게시간: ${dto.restopentime} ~ ${dto.restclosetime}</p>
		</div>
		<div>
			<p>주간 휴무일: ${dto.hospitaldayoff}</p>
		</div>
		<hr>
		<div>
			<c:forEach items="${deptlist}" var="list">
				<div style="display: flex; padding-left: 0;">
					<p style="width: 100px;">${list.departmentname}</p>
					<div style="display: flex;">
						<c:forEach items="${doclist}" var="doc">
							<c:if test="${list.departmentname == doc.departmentname}">
								<img class="docter-images"
									src="/apa/resources/images/doc/${doc.doctorImage}">
								<p class="" style="margin-right: 30px;">${doc.doctorName}</p>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</c:forEach>
		</div>
		<hr>
		<div>
			<p class="hospital-info-info">${dto.hospitalemail}</p>
			<p class="hospital-info-info">${dto.hospitaltel}</p>
		</div>
		<hr>
		<div>
			<p class="hospital-info-info">${dto.hospitaladdress}</p>
			<div id="map" style="width: auto; height: 400px;"></div>
			<!-- 지도를 담을 영역 만들기 -->
		</div>
		<c:if test="${lv == '1'}">
			<div style"width=100%">
				<a href="/apa/search/reservation/select.do?seq=${dto.hospitalid}">
					<button class="reservation-button">예약하기</button>
				</a>
			</div>
		</c:if>
		<c:if test="${lv == '' || lv == null}">
			<!-- <div class="button-div"> -->
			<!-- <a class="js-click-modal">
					<button class="reservation-button">예약하기</button>
				</a> -->
			<div class="container">
				<a class="reservation-button js-click-modal">예약하기</a>
				<div class="reservation-modal">
					<div>
						<form action="/apa/search/reservation/select.do" method="POST">
							<div class="hospital-info">
								<div>
									<c:if test="${dto.face == 'y' || dto.face == 'Y'}">
										<div>
											<div>
												<button type="button" class="type-button" onclick="typechoice()" value="${dto.face}">대면</button>
											</div>
										</div>
									</c:if>
									<c:if test="${dto.unface == 'y' || dto.unface == 'Y'}">
										<div>
											<div>
												<button type="button" class="type-button" onclick="typechoice()" value="${dto.unface}">비대면</button>
											</div>
										</div>
									</c:if>
									<c:if test="${dto.housecall == 'y' || dto.housecall == 'Y'}">
										<div>
											<div>
												<button type="button" class="type-button" onclick="typechoice()" value="${dto.housecall}">왕진</button>
											</div>
										</div>
									</c:if>
									<c:if test="${dto.ishealthcheck == 'y' || dto.ishealthcheck == 'Y'}">
										<div>
											<div>
												<button type="button" class="type-button" onclick="typechoice()" value="${dto.ishealthcheck}">건강검진</button>
											</div>
										</div>
									</c:if>
									<c:if test="${dto.vaccination == 'y' || dto.vaccination == 'Y'}">
										<div>
											<div>
												<button type="button" class="type-button" onclick="typechoice()" value="${dto.vaccination}">예방접종</button>
											</div>
										</div>
									</c:if>
								</div>
								<div class="reservation-modal-button-list">
									<div id="choice-type"></div>
									<input type="hidden" name="seq" value="${dto.hospitalid}">
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									<button type="submit" class="js-close-modal reservation-modal-button" disabled="disabled">다음으로</button>
									<a class="js-close-modal reservation-modal-button">닫기</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- </div> -->
		</c:if>
		<hr>
		<%-- <div class="message" title="사용자 이름">
		 	<sec:authentication property="principal.dto.userid"/>
		 	<sec:authentication property="principal.dto.username"/>
		 </div> --%>
		<div>
			<div class="review-progress-bar">
				<div class="review-progress" style="width: ${positive}%";></div>
			</div>
			<div>
				<c:forEach items="${reviewlist}" var="reviewlist">
					<div class="review-grid">
						<div>${reviewlist.userId}</div>
						<div class="hospital-info-grid reviewtaglist">
							<c:forEach items="${reviewtaglist}" var="reviewtaglist">
								<c:if test="${reviewtaglist.reviewSeq == reviewlist.reviewSeq}">
									<p class="box-content">${reviewtaglist.tagContent}</p>
								</c:if>
							</c:forEach>
						</div>
					</div>
					<p>${reviewlist.reviewContent}</p>
				</c:forEach>
			</div>
		</div>
		<div id="seq"
			data-userseq="<sec:authentication property='principal.dto.userseq' />">
		</div>
	</div>
</main>
<script>
	function typechoice() {
		$('.type-button').css('opacity', '0.4');
		$(event.target).css('opacity', '1');
		$('#choice-type').html('');
		$('#choice-type').append('<input type="hidden" id="choicetype" name="choicetype" value= "">');
		$('#choicetype').val($(event.target).text());
		$('.reservation-modal-button').attr("disabled", false);
	}
	$('.js-click-modal').click(function() {
		$('.container').addClass('modal-open');
		$(".js-close-modal").css('opacity', '10');
		$(".js-click-modal").css('opacity', '0');
	});

	$('.js-close-modal').click(function() {
		$('.container').removeClass('modal-open');
		$(".js-close-modal").css('opacity', '0');
		$(".js-click-modal").css('opacity', '10');
	});
	$("#bookmark-button").click(
			function() {
				var color = $(this).css('color');
				let obj = {
					userseq : 1,
					hospitalid : '${dto.hospitalid}'
				};
				if ($("#bookmark-button").css('color') === 'rgb(255, 255, 0)') {
					$.ajax({
						type : 'POST',
						url : 'http://localhost:8090/apa/search/bookmarkout',
						headers : {
							'Content-Type' : 'application/json'
						},
						beforeSend : function(xhr) {
							xhr.setRequestHeader('${_csrf.headerName}', '${_csrf.token}');
						},
						data : JSON.stringify(obj),
						dataType : 'json',
						success : function(result) {
							$("#bookmark-button").css('color', 'white');
						},
						error : function(a, b, c) {
							console.log(a, b, c);
						}
					});
				} else {

					$.ajax({
						type : 'POST',
						url : 'http://localhost:8090/apa/search/bookmark',
						headers : { 
							'Content-Type' : 'application/json'
						},
						beforeSend : function(xhr) {
							xhr.setRequestHeader('${_csrf.headerName}', '${_csrf.token}');
						},
						data : JSON.stringify(obj),
						dataType : 'json',
						success : function(result) {
							$("#bookmark-button").css('color', 'yellow');
						},
						error : function(a, b, c) {
							console.log(a, b, c);
						}
					});
				}
			});
</script>