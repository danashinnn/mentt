<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<link href="/resources/assets/img/favicon.png" rel="icon">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="/resources/css/notice/notice.css" rel="stylesheet">
</head>
<body>

	<jsp:include page="/common/header.jsp" />

	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs" data-aos="fade-in">
			<div class="container">
				<h2>공지사항</h2>
				<p>아직 개발중입니다.</p>
			</div>
		</div>
		<!-- End Breadcrumbs -->

		<!-- ======= Events Section ======= -->
		<section id="events" class="events">
			<div class="container" data-aos="fade-up">

				<h1>공지사항</h1>
				<hr>

				<table border="1">
					<tr>
						<th>게시물 번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
					<c:forEach items="${list }" var="b" varStatus="i">
						<tr>
						<!-- i.count:반복회차(1부터시작) / i.index(0부터시작) -->
							<td>${(reqPage-1)*numPerPage + i.count }</td>
							<td class="noticeNo">${b.noticeNo }</td>
							<td class="noticeTitle">${b.noticeTitle }</td>
							<td class="noticeWriter">${b.noticeWriter }</td>
							<td class="noticeDate">${b.noticeDate }</td>
							<td class="noticeReadCount">${b.noticeReadCount }</td>
						</tr>
					</c:forEach>
					<tfoot>
						<tr>
							<td colspan="4"><div id="pageNavi">${pageNavi }</div></td>
						</tr>
					</tfoot>
				</table>


				<c:if test="${not empty sessionScope.m}">
					<a href="/noticeWriteFrm.do">게시글 작성</a>
				</c:if>
				<a href="/">메인으로</a>

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