<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link href="/resources/assets/css/notice/noticeList.css" rel="stylesheet">
<link href="/resources/assets/img/favicon.png" rel="icon">
</head>

<body>
<jsp:include page="/common/header.jsp" />

<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs" data-aos="fade-in">
			<div class="container">
				<h2>공지사항</h2>
				<p>mentt의 소식을 가장 빠르게 알려드립니다!</p>
			</div>
		</div>
		<!-- End Breadcrumbs -->

		<!-- ======= Events Section ======= -->
		<section id="events" class="events">
			<div class="container" data-aos="fade-up">
				<table border="1">
					<tr style="height: 50px; background-color: #f8f9fa;">
						<th>NO</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
					<c:forEach items="${list }" var="n" varStatus="i">
						<tr style="height: 50px;">
							<td>${(reqPage-1)*numPerPage+i.count }</td>
							<td><a href="/noticeView.do?noticeNo=${n.noticeNo }">${n.noticeTitle }</a></td>
							<td>${n.noticeWriter }</td>
							<td>${n.noticeDate }</td>
							<td>${n.noticeReadCount }</td>
						</tr>
					</c:forEach>
					<tfoot>
						<tr style="height: 50px;">
							<td colspan="5"><div id="pageNavi" style="height: 50px; line-height: 50px;">${pageNavi }</div></td>
						</tr>
					</tfoot>
				</table>


				<c:if test="${not empty sessionScope.m}">
					<a href="/noticeWriteFrm.do" class="riteBtn">글쓰기</a>
				</c:if>

			</div>
		</section>
		<!-- End Events Section -->

	</main>
	<!-- End #main -->

	<jsp:include page="/common/footer.jsp" />

	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="/resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="/resources/assets/vendor/aos/aos.js"></script>
	<script
		src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="/resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="/resources/assets/js/main.js"></script>
	<script>
		$(".noticeNo").hide();
		$(".noticeTitle").on("click", function() {
			const noticeNo = $(this).prev().text();
			location.href = "/noticeView.do?noticeNo=" + noticeNo;
		});
	</script>

</body>
</html>