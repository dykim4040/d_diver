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


</head>
<body>
<c:set var="movie" value="${movieInfo }"></c:set>
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
		<h2>${movieInfo.movieNm}</h2>
	</div>
</section>
<!-- Hero section end -->

<!-- Recipe big view -->
<section class="movie-details-section">
<div class="recipe-view-section">
	<div class="container">
		<%-- 		<img src="${movie.covThUrl}" width="350px" height="500px"> --%>
		<iframe width="100%" height="600"
			src="https://www.youtube.com/embed/pWemV6TiUZE" frameborder="0"
			allow="autoplay; encrypted-media" allowfullscreen></iframe>

	</div>
</div>
</section>
<!-- Recipe details section -->

<section style="margin-top: 30px;">
<div class="container">
	<div class="recipe-meta">
		<!-- 	<div class="racipe-cata"> -->
		<!-- 		<span>For Begginers</span> -->
		<!-- 	</div> -->
		<h2>${movieInfo.movieNm}</h2>
		<div class="rating">
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
				class="fa fa-star"></i> <i class="fa fa-star"></i> <i
				class="fa fa-star is-fade"></i>
		</div>


	</div>
</div>
</section>

<section class="movie-detail">
<div class="container">
	<div class="container-row">
		<div class="thumb">
				
			<img src="${movieInfo.covThUrl}" id="movieP">
			
		</div>
		<div class="row2">
		
			<div class="summary"><b>시놉시스</b> <br>${movieInfo.synopsis}</div>
			<ul id="summmary-ul">
				<li>
					<strong>개요</strong>
					<span>${movieInfo.repGenreNm}</span>
					<small>&nbsp;|&nbsp;</small>
					${movieInfo.watchGradeNm}
					<small>&nbsp;|&nbsp;</small>
					${movieInfo.showTm}분
				</li>
				<li>
					<strong>출연</strong><br>
					<c:forEach var="star" items="${movieInfo.starsIn }" varStatus="index">
						<b>${star.starNm }</b>
						<c:if test="${!index.last}">,&nbsp;&nbsp;</c:if>
					</c:forEach>
				</li>
				<li>
					<strong>감독</strong><br>
					<c:forEach var="director" items="${movieInfo.directorsIn }" varStatus="index">
						<b>${director.directorNm }</b>
						<c:if test="${!index.last}">,&nbsp;&nbsp;</c:if>
					</c:forEach>
				</li>
				<li>
					<strong>회사</strong><br>
					<c:forEach var="company" items="${movieInfo.companiesIn }" varStatus="index">
						<b>${company.companyNm } &lt;${company.companyPartNm }&gt;</b>
						<c:if test="${!index.last}">,&nbsp;&nbsp;</c:if>
					</c:forEach>
				</li>
			</ul>
			<button class="btn">구매하기</button>
		</div>
	</div>
</div>
</section>
<!-- Recipe details section end -->


<!-- Comment section -->
<section class="comment-section spad pt-0">
<div class="container">

	<div class="container-row">
		<div class="thumb">
			<span id="fnt">Leave a comment</span>
		</div>
		<div class="row2">
			<span class="star-input"> 
	<span class="input"> 
	<input type="radio" name="star-input" onclick="mark(1)" value="1" id="p1"> 
	<label for="p1">1</label> 
	<input type="radio" name="star-input" onclick="mark(2)" value="2" id="p2"> 
	<label for="p2">2</label> 
	<input type="radio" name="star-input" onclick="mark(3)" value="3" id="p3"> 
	<label for="p3">3</label>
	<input type="radio" name="star-input" onclick="mark(4)" value="4" id="p4"> 
	<label for="p4">4</label> 
	<input type="radio" name="star-input" onclick="mark(5)" value="5" id="p5"> 
	<label for="p5">5</label> 
	<input type="radio" name="star-input" onclick="mark(6)" value="6" id="p6"> 
	<label for="p6">6</label> 
	<input type="radio" name="star-input" onclick="mark(7)" value="7" id="p7"> 
	<label for="p7">7</label> 
	<input type="radio" name="star-input" onclick="mark(8)" value="8" id="p8"> 
	<label for="p8">8</label> 
	<input type="radio" name="star-input" onclick="mark(9)" value="9" id="p9"> 
	<label for="p9">9</label> 
	<input type="radio" name="star-input" onclick="mark(10)" value="10" id="p10"> 
	<label for="p10">10</label>

	</span> 
	<output for="star-input">
			<b>0</b>점
	</output>
	</span>
		</div>
		
	</div>

</div>
</section>
<!-- Comment section -->


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
<script src="/resources/script/jquery-3.3.1.min.js"></script>
<script src="/resources/js/owl.carousel.min.js"></script>
<script src="/resources/js/main.js"></script>
<script>
	var starRating = function() {
		var $star = $(".star-input");
		$result = $star.find("output>b");

		$(document).on("focusin", ".star-input>.input", function() {
			$(this).addClass("focus");
		})

		.on("focusout", ".star-input>.input", function() {
			var $this = $(this);
			setTimeout(function() {
				if ($this.find(":focus").length === 0) {
					$this.removeClass("focus");
				}
			}, 100);
		})

		.on("change", ".star-input :radio", function() {
			$result.text($(this).next().text());
		}).on("mouseover", ".star-input label", function() {
			$result.text($(this).text());
		}).on("mouseleave", ".star-input>.input", function() {
			var $checked = $star.find(":checked");
			if ($checked.length === 0) {
				$result.text("0");
			} else {
				$result.text($checked.next().text());
			}
		});
	};
	

	starRating();
</script>
</body>
</html>