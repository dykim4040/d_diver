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
		<h2>영화</h2>
	</div>
</section>
<!-- Hero section end -->


<!-- Search section -->
<div class="search-form-section">
<div class="sf-warp">
	<div class="container">
		<form class="big-search-form">
			<select>
				<option>영화 카테고리</option>
				<option>로맨스</option>
				<option>가족</option>
				<option>액션</option>
				<option>코미디</option>
				<option>공포(호러)</option>
				<option>기타</option>
			</select>
			<input type="text" placeholder="검색">
			<button class="bsf-btn">검색</button>
		</form>
	</div>
</div>
</div>
<!-- Search section end -->


<!-- 추천영화 section -->
<section class="recipes-page spad">
<div class="container">
	<div class="row">
		<div class="col-md-8">
			<div class="section-title">
				<h2>추천영화</h2>
			</div>
		</div>
<!-- 		<div class="col-md-4"> -->
<!-- 			<div class="recipe-view"> -->
<!-- 				<i class="fa fa-bars"></i> -->
<!-- 				<i class="fa fa-th active"></i> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</div>
	<div class="row">
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/1.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>어벤져스-엔드게임</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/2.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>나홀로집에1</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/3.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>나홀로집에2</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/4.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>나홀로집에3</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/5.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>툼레이더</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/6.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>가디언즈 오브 갤럭시vol1</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div class="site-pagination">
		<span>01</span>
		<a href="#">02</a>
		<a href="#">03</a>
	</div>
</div>
</div>
</section>
<!-- Recipes section end -->

<!-- 인기영화 section -->
<section class="recipes-page spad">
<div class="container">
	<div class="row">
		<div class="col-md-8">
			<div class="section-title">
				<h2>인기영화</h2>
			</div>
		</div>
<!-- 		<div class="col-md-4"> -->
<!-- 			<div class="recipe-view"> -->
<!-- 				<i class="fa fa-bars"></i> -->
<!-- 				<i class="fa fa-th active"></i> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</div>
	<div class="row">
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/1.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>어벤져스-엔드게임</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/2.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>나홀로집에1</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/3.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>나홀로집에2</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/4.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>나홀로집에3</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/5.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>툼레이더</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/6.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>가디언즈 오브 갤럭시vol1</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div class="site-pagination">
		<span>01</span>
		<a href="#">02</a>
		<a href="#">03</a>
	</div>
</div>
</div>
</section>
<!-- Recipes section end -->

<!-- NEW영화 section(내 생각엔 우리가 새로 업데이트한 영화들 뜨게 해서 관심 끌게 만들기 위해서 필요할거 같은데..) -->
<section class="recipes-page spad">
<div class="container">
	<div class="row">
		<div class="col-md-8">
			<div class="section-title">
				<h2>NEW!!</h2>
			</div>
		</div>
<!-- 		<div class="col-md-4"> -->
<!-- 			<div class="recipe-view"> -->
<!-- 				<i class="fa fa-bars"></i> -->
<!-- 				<i class="fa fa-th active"></i> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</div>
	<div class="row">
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/1.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>어벤져스-엔드게임</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/2.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>나홀로집에1</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/3.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>나홀로집에2</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/4.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>나홀로집에3</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/5.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>툼레이더</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<img src="/resources/img/recipes/6.jpg" alt="">
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>가디언즈 오브 갤럭시vol1</h3>
						<div class="rating">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star is-fade"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div class="site-pagination">
		<span>01</span>
		<a href="#">02</a>
		<a href="#">03</a>
	</div>
</div>
</div>
</section>
<!-- Recipes section end -->



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