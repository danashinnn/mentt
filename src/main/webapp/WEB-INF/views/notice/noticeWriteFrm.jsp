<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/resources/css/notice/noticeWriteFrm.css" rel="stylesheet">
<link href="/resources/css/notice/basic.css" rel="stylesheet">
<link href="/resources/assets/img/favicon.png" rel="icon">
<link rel="stylesheet" href="/summernote/summernote-lite.css">
</head>
<body>
<jsp:include page="/common/header.jsp" />
<script src="/summernote/summernote-lite.js"></script>
<script src="/summernote/lang/summernote-ko-KR.js"></script>

<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs" data-aos="fade-in">
			<div class="container">
				<h2>공지사항 작성하기</h2>
				<p>mentt의 소식을 써주세요!</p>
			</div>
		</div>
		<!-- End Breadcrumbs -->
		
		<form action="/noticeWrite.do" method="post" enctype="multipart/form-data">
		<fieldset>
		<input type="text" name="noticeTitle" class="noticeTitle back_g" placeholder="제목을 써주세요."><br>
		<!-- 
		파일첨부: <input type="file" multiple id="files" accept=".gif, .jpg, .png" onchange="readURL(this)"> <br>
		 -->
		<textarea name="noticeContent" id="noticeContent"></textarea><br>
		<input type="hidden" name="noticeWriter" value="${sessionScope.m.MId }"><br>
		<input type="submit" value="공지사항 등록하기" class="riteBtn">
		</fieldset>
		</form>
		
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
		
	
		$("#noticeContent").summernote({
			height:400,
			lang:"ko-KR",
			callbacks : {

				//onImageUpload : function(files){
				//for(let i=0;i<files.length;i++){
										//uploadImage(files[i],this);
				
						onImageUpload : function(files){
						uploadImage(files[0],this);
				}
			}
		});
	</script>
</body>
</html>