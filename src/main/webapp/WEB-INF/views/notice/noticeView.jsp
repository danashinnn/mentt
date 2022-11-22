<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link href="/resources/assets/img/favicon.png" rel="icon">
<link href="/resources/css/notice/noticeView.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/common/header.jsp" />

	<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs" data-aos="fade-in">
			<div class="container">
				<h2>공지사항 상세보기</h2>
			</div>
		</div>
		<!-- End Breadcrumbs -->


<!-- ======= Events Section ======= -->
		<section id="events" class="events">
			<div class="container" data-aos="fade-up">
				<table border="1" class="tb">
					<tr style="height: 50px; background-color: #f8f9fa;">
						<th class="wt_200">NO</th>
						<th>${n.noticeNo }</th>
						<th class="wt_200">제목</th>
						<th>${n.noticeTitle }</th>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${n.noticeWriter }</td>
						<th>작성일</th>
						<td>${n.noticeDate }</td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td colspan="3" class="ta">
						<c:forEach items="${b.fileList }" var="f">
							<p>
								<a href="#">${f.filename }</a>
							</p>
						</c:forEach>
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3" class="ta">
							${n.noticeContent }
						</td>
					</tr>
				</table>


				<c:if test="${not empty sessionScope.m}">
				<div class="riteBtn_wra">
					<a href="/noticeWriteFrm.do" class="riteBtn">글쓰기</a>
				</div>
				</c:if>

			</div>
		</section>
		<!-- End Events Section -->



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