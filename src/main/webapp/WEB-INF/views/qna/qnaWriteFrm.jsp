<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<link href="/resources/assets/css/qna/qnaWriteFrm.css" rel="stylesheet">
  	<link href="/resources/assets/img/favicon.png" rel="icon">
	<script src="https://kit.fontawesome.com/7b7a761eb5.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>

<body>

 <jsp:include page="/common/header.jsp"/>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>Q&A</h2>
        <p>당신의 멘토가 직접 답변해드립니다!</p>
      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Events Section ======= -->
    <section id="events" class="events">
      <div class="container" data-aos="fade-up">

        <div class="row">
          
          <div class="qna-wrap">
	        <form action="/writeQna.do" id="qnaWriteFrm" method="post" enctype="multipart/form-data">
		        <div class="qna-content-wrap">
		            <div class="qna-title-wrap">
		                <div class="qna-content-title">
		                	<input type="text" id="qnaTitle" name="qnaTitle" class="qna-input-form" placeholder="제목을 입력해주세요">
		                </div>
		            </div>
		            <div class="qna-content-file">
		            	<input type="file" name="qnaFile" id="qnaFile" multiple onchange="loadfile(this);">
		            	<button type="button" class="file-btn">첨부</button>
		            	<div class="fileZone"></div>
		            </div>
		            <div class="qna-content">
		                <textarea name="qnaContent" id="qnaContent" placeholder="내용을 입력해주세요"></textarea>
		            </div>
		        </div>
		       
		        <div class="qna-button-wrap">
		            <button type="button" id="qna-submit-btn" class="qna-btn">등록</button>
		            <a class="qna-btn qna-btn-list" href="/qnaList.do?reqPage=1">취소</a>
		        </div>
	   </form>     
	  </div>
          
        </div>

      </div>
    </section><!-- End Events Section -->

  </main><!-- End #main -->

  <jsp:include page="/common/footer.jsp"/>

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="/resources/assets/vendor/aos/aos.js"></script>
  <script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/resources/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/resources/assets/js/main.js"></script>
  
  <script src="/resources/assets/js/qna.js"></script>
</body>

</html>