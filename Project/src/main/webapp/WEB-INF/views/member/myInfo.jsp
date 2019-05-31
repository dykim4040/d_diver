<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Food Blog - Web Template</title>
<meta charset="UTF-8">
<meta name="description" content="Food Blog Web Template">
<meta name="keywords" content="food, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Favicon -->
<link href="/resources/img/clapperboard.png" rel="shortcut icon" />

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600,600i,700"
	rel="stylesheet">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="/resources/css/font-awesome.min.css" />
<link rel="stylesheet" href="/resources/css/owl.carousel.css" />
<link rel="stylesheet" href="/resources/css/animate.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="/resources/css/custom.css" />
<script src="/resources/script/jquery-3.3.1.min.js"></script>

</head>
<body>
<!-- Page Preloder -->
<div id="preloder">
	<div class="loader"></div>
</div>

<!-- Header section -->
<jsp:include page="/WEB-INF/views/inc/top.jsp"></jsp:include>
<!-- Header section end -->


<!-- Hero section -->
<section class="page-top-section set-bg"
	data-setbg="/resources/img/page-top-bg.jpg">
	<div class="container">
		<h2>내정보</h2>
	</div>
</section>
<!-- Hero section end -->


<section class="contact-section spad">
<div class="container">
	<div class="row">
	<div class="col-lg-6" style="margin: auto;">
		<div class="contact-form-warp">
			<h4>내정보</h4>
			<form action="/member/upDate" method="post" id="myInfo" name="frm"
				class="contact-form" onsubmit="return formCheck();">
			<input type="hidden" name="id" value="${member.id }">
			<div class="row">
				<div class="col-md-12">
					<c:set var="member" value="${member }"></c:set>
					<fieldset>
						<legend>"${member.id }" 회원님의 정보입니다.</legend>
						<br>
							
						<label>Password</label> <input type="password" name="password" id="password"
							required><br>
							
							<label>E-Mail</label>
						<input type="email" name="email" disabled="disabled"
							value="${member.email }" required><br>
							
							
						<label>Birthday</label><input
							type="date" name="birthday"
							value='<fmt:formatDate value="${member.birthday }" pattern="yyyy-MM-dd"/>'
							disabled="disabled"><br> 
							
							 <label>Mypackage</label>
							<input type="text" name="Mypackage" disabled="disabled"
							value="${pack }" required><br> 
							
							<label>cash</label> 
							<input
							type="text" name="cash" disabled="disabled"
							value="${member.cash }" required><br> 
							
							<label>mileage</label>
						<input type="text" name="mileage" disabled="disabled"
							value="${member.mileage }" required><br>
						
						<button type="button"  id="delete" onclick = "location.href = '/member/memberDelete'">삭제</button>
						<button class="site-btn" id="upDate">수정하기</button>
						
							
					</fieldset>
				</div>
			</div>
			</form>
		</div>
	</div>
	</div>
</div>
</section>


<!-- Gallery section -->
<div class="gallery">
	<div class="gallery-slider owl-carousel">
		<div class="gs-item set-bg"
			data-setbg="/resources/img/instagram/1.jpg"></div>
		<div class="gs-item set-bg"
			data-setbg="/resources/img/instagram/2.jpg"></div>
		<div class="gs-item set-bg"
			data-setbg="/resources/img/instagram/3.jpg"></div>
		<div class="gs-item set-bg"
			data-setbg="/resources/img/instagram/4.jpg"></div>
		<div class="gs-item set-bg"
			data-setbg="/resources/img/instagram/5.jpg"></div>
		<div class="gs-item set-bg"
			data-setbg="/resources/img/instagram/6.jpg"></div>
	</div>
</div>
<!-- Gallery section end -->


<!-- Footer section  -->
<jsp:include page="/WEB-INF/views/inc/bottom.jsp"></jsp:include>
<!-- Footer section end -->


<!--====== Javascripts & Jquery ======-->
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/js/owl.carousel.min.js"></script>
<script src="/resources/js/main.js"></script>


</body>
</html>