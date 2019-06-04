<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
			<h2>고객센터</h2>
		</div>
	</section>
	<!-- Hero section end -->

	<section class="contact-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="contact-form-warp">
						<h1>Q&A [전체글개수: ${pageInfoMap.allRowCount}]</h1>

						<table id="notice">
							<tr>
								<th class="tno">No.</th>
								<th class="ttitle">Title</th>
								<th class="twrite">Writer</th>
								<th class="tdate">Date</th>
								<th class="tread">Read</th>
							</tr>

							<c:choose>
								<c:when test="${not empty list}">
									<%-- pageInfoMap.allRowCount gt 0 --%>
									<%-- 
		*forEach 반복할때마다 pageScope 영역객체에 저장
		pageContext.setAttribute("board", list 요소 한개); 
	--%>
									<c:forEach var="board" items="${list}">
										<tr
											onclick="location.href='/board/detail?num=${board.num}&pageNum=${pageInfoMap.pageNum}'">
											<td>${board.num}</td>
											<td class="left"><c:if test="${board.reLev gt 0}">
													<!-- 답글일때 -->
													<c:set var="wid" value="${board.reLev * 10}" />
													<%-- 답글 들여쓰기 레벨 값 저장용 --%>
													<img src="/images/center/level.gif"
														style="width: ${wid}px; height: 13px;">
													<img src="/images/center/re.gif">
												</c:if> ${board.subject}</td>
											<td>${board.name}</td>
											<td><fmt:formatDate value="${board.regDate}"
													pattern="yyyy.MM.dd" /></td>
											<td>${board.readCount}</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="5">게시판 글 없음</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</table>

							<div id="table_search">
								<input type="button" value="글쓰기" class="btn"
									onclick="location.href = '/board/write';">
							</div>

						<div id="table_search">
							<form action="/board/list" method="get">
								<input type="text" name="search" class="input_box"
									value="${search}"> <input type="submit" value="검색"
									class="btn">
							</form>
						</div>
						<div class="clear"></div>
						<div id="page_control">
							<c:if test="${pageInfoMap.allRowCount gt 0}">
								<!-- 이전 블록이 존재하는지 확인 -->
								<c:if
									test="${pageInfoMap.startPage gt pageInfoMap.pageBlockSize}">
									<a
										href="/board/list?pageNum=${pageInfoMap.startPage - pageInfoMap.pageBlockSize}&search=${search}">[이전]</a>
								</c:if>

								<c:forEach var="i" begin="${pageInfoMap.startPage}"
									end="${pageInfoMap.endPage}" step="1">
									<c:choose>
										<c:when test="${i eq pageInfoMap.pageNum}">
											<a href="/board/list?pageNum=${ i }&search=${search}"><span
												style="color: blue; font-weight: bold;">[${ i }]</span></a>
										</c:when>
										<c:otherwise>
											<a href="/board/list?pageNum=${ i }&search=${search}">[${ i }]</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>

								<!-- 다음 블록이 존재하는지 확인 -->
								<c:if test="${pageInfoMap.endPage lt pageInfoMap.maxPage}">
									<a
										href="/board/list?pageNum=${pageInfoMap.startPage + pageInfoMap.pageBlockSize}&search=${search}">[다음]</a>
								</c:if>
							</c:if>
						</div>
					</div>
				</div>
				<!-- map -->
				<!-- 	<div class="location-map" id="map-canvas"></div>	 -->
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


	<!-- load for map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWTIlluowDL-X4HbYQt3aDw_oi2JP0Krc"></script>
	<script src="/resources/js/map.js"></script>

</body>
</html>