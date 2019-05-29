<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Food Blog - Web Template</title>
<meta charset="UTF-8">
<meta name="description" content="Food Blog Web Template">
<meta name="keywords" content="food, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Favicon -->   
<link href="/resources/img/clapperboard.png" rel="shortcut icon"/>

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600,600i,700" rel="stylesheet">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="/resources/css/font-awesome.min.css"/>
<link rel="stylesheet" href="/resources/css/owl.carousel.css"/>
<link rel="stylesheet" href="/resources/css/animate.css"/>
<link rel="stylesheet" href="/resources/css/style.css"/>
<link rel="stylesheet" href="/resources/css/custom.css" />
</head>
<body>
<c:if test="${sessionID == null }">
<script>
alert('로그인이 필요합니다.');
location.href="/member/login";
</script>
</c:if>
<!-- Page Preloder -->
<div id="preloder">
	<div class="loader"></div>
</div>

<!-- Header section -->
<jsp:include page="/WEB-INF/views/inc/top.jsp"></jsp:include>
<!-- Header section end -->


<!-- Hero section -->
<section class="page-top-section set-bg" data-setbg="/resources/img/page-top-bg.jpg">
	<div class="container">
		<h2>구매</h2>
	</div>
</section>
<!-- Hero section end -->


<!-- Facts section -->
<section class="facts-section">
<div class="facts-warp">
<div class="container">
	<div class="row">
		<div class="pur col-sm-6 fact-item">
			<div class="fact-icon">
				<img src="/resources/img/package/gold.png" alt="">
			</div>
			<h3>GOLD</h3>
			<p>6달 동안 시청 가능한 패키지</p>
			<h4>$27.00</h4><br>
			<button class="site-btn">구매하기</button>
		</div>
		<div class="pur col-sm-6 fact-item">
			<div class="fact-icon">
				<img src="/resources/img/package/silver.png" alt="">
			</div>
			<h3>SILVER</h3>
			<p>3달 동안 시청 가능한 패키지</p>
			<h4>$16.00</h4><br>
			<button class="site-btn">구매하기</button>
		</div>
		<div class="pur col-sm-6 fact-item">
			<div class="fact-icon">
				<img src="/resources/img/package/bronze.png" alt="">
			</div>
			<h3>BRONZE</h3>
			<p>1달 동안 시청 가능한 패키지</p>
			<h4>$8.00</h4><br>
			<button class="site-btn">구매하기</button>
		</div>
	</div>
</div>
</div>
</section>
<!-- Facts section end -->

<!-- Gallery section -->
<div class="gallery">
	<div class="gallery-slider owl-carousel">
		<div class="gs-item set-bg" data-setbg="/resources/img/instagram/1.jpg"></div>
		<div class="gs-item set-bg" data-setbg="/resources/img/instagram/2.jpg"></div>
		<div class="gs-item set-bg" data-setbg="/resources/img/instagram/3.jpg"></div>
		<div class="gs-item set-bg" data-setbg="/resources/img/instagram/4.jpg"></div>
		<div class="gs-item set-bg" data-setbg="/resources/img/instagram/5.jpg"></div>
		<div class="gs-item set-bg" data-setbg="/resources/img/instagram/6.jpg"></div>
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