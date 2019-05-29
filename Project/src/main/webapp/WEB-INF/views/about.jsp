<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h2>내 컨텐츠</h2>
	</div>
</section>
<!-- Hero section end -->



<!-- About section -->
<section class="about-section spad">
<div class="container">
	<div class="row">
		<div class="col-lg-6 about-text">
			<h2>About our great team</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec varius dui. Suspendisse potenti. Vestibulum ac pellentesque tortor. Aenean congue sed metus in iaculis. Cras a tortor enim. Phasellus posuere vestibulum ipsum, eget lobortis purus. Orci varius natoque penatibus et magni. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec varius dui. Suspendisse potenti. Vestibulum ac pellentesque tortor. Aenean congue sed metus in iaculis. Cras a tortor enim. Phasellus posuere vestibulum ipsum, eget lobortis purus. Orci varius natoque penatibus et magni.</p>
			<div class="site-btn">Read more</div>
		</div>
		<div class="col-lg-6">
			<img src="/resources/img/about.jpg" alt="">
		</div>
	</div>
</div>
</section>
<!-- About section end -->


<!-- Facts section -->
<section class="facts-section">
<div class="facts-warp">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-sm-6 fact-item">
				<div class="fact-icon">
					<img src="/resources/img/icon/1.png" alt="">
				</div>
				<h2>1287</h2>
				<p>Amazing receipies</p>
			</div>
			<div class="col-lg-3 col-sm-6 fact-item">
				<div class="fact-icon">
					<img src="/resources/img/icon/2.png" alt="">
				</div>
				<h2>25</h2>
				<p>Wine pairings</p>
			</div>
			<div class="col-lg-3 col-sm-6 fact-item">
				<div class="fact-icon">
					<img src="/resources/img/icon/3.png" alt="">
				</div>
				<h2>471</h2>
				<p>Meat receipies</p>
			</div>
			<div class="col-lg-3 col-sm-6 fact-item">
				<div class="fact-icon">
					<img src="/resources/img/icon/4.png" alt="">
				</div>
				<h2>326</h2>
				<p>Desert receipies</p>
			</div>
		</div>
	</div>
</div>
</section>
<!-- Facts section end -->


<!-- Newsletter section -->
<section class="newsletter-section spad">
<div class="container">
	<div class="row">
		<div class="col-lg-6 nl-text">
			<h2>Subscribe to our newsletter</h2>
			<form class="newsletter-form">
				<input type="text" placeholder="Your E-mail">
				<button class="site-btn">Subscribe</button>
			</form>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec varius dui. Suspendisse potenti. Vestibulum ac pellentesque tortor. Aenean congue sed metus in iaculis. Cras a tortor enim. </p>
		</div>
		<div class="col-lg-6">
			<img class="nl-sp-img" src="/resources/img/newslatter.png" alt="">
		</div>
	</div>
</div>
</section>
<!-- Newsletter section end -->


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