<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<input type="text" name="search" class="input_box" value="${search}" placeholder="검색">
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
				<h2>All Movies</h2>
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
<c:choose>
<c:when test="${not empty list}">
<c:forEach var="movie" items="${list}">		
		<div class="col-lg-4 col-md-6">
			<div class="recipe">
				<a href="/recipe-single"><img src="${movie.covThUrl}"></a>
				<div class="recipe-info-warp">
					<div class="recipe-info">
						<h3>${movie.movieNm}</h3>
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
</c:forEach>
</c:when>
<c:otherwise>		
<div><h3>영화가 없습니다.</h3></div>
</c:otherwise>
</c:choose>
   </div>
</div>
	<div class="site-pagination">
		<c:if test="${pageInfoMap.allRowCount gt 0}">
		<!-- 이전 블록이 존재하는지 확인 -->
		<c:if test="${pageInfoMap.startPage gt pageInfoMap.pageBlockSize}">
			<a href="/movie?pageNum=${pageInfoMap.startPage - pageInfoMap.pageBlockSize}&search=${search}">이전</a>
		</c:if>
		
		<c:forEach var="i" begin="${pageInfoMap.startPage}" end="${pageInfoMap.endPage}" step="1">
			<c:choose>
			<c:when test="${i eq pageInfoMap.pageNum}">
				<a href="/movie?pageNum=${i}&search=${search}">${ i }</a>
			</c:when>
			<c:otherwise>
				<a href="/movie?pageNum=${i}&search=${search}">${ i }</a>
			</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<!-- 다음 블록이 존재하는지 확인 -->
		<c:if test="${pageInfoMap.endPage lt pageInfoMap.maxPage}">
			<a href="/movie?pageNum=${pageInfoMap.startPage + pageInfoMap.pageBlockSize}&search=${search}">다음</a>
		</c:if>
	</c:if>
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