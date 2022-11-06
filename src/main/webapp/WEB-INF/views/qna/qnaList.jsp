<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<link href="/resources/assets/css/qnaList.css" rel="stylesheet">
  	<link href="/resources/assets/img/favicon.png" rel="icon">
</head>

<body>

 <jsp:include page="/common/header.jsp"/>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>QNA</h2>
        <p>당신의 멘토가 직접 답변해드립니다!</p>
      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Events Section ======= -->
    <section id="events" class="events">
      <div class="container" data-aos="fade-up">

        <div class="row">
          
          <div class="qna-wrap">
	        <!-- board list area -->
	        <div id="board-list">
	           <div class="container">
	               <table class="board-table">
	                   <thead>
	                   <tr>
	                       <th scope="col" class="th-num" style="width:10%;">번호</th>
	                       <th scope="col" class="th-title" style="width:45%;">제목</th>
	                       <th scope="col" class="th-title" style="width:15%;">작성자</th>
	                       <th scope="col" class="th-date" style="width:20%;">등록일</th>
	                       <th scope="col" class="th-date" style="width:10%;">조회수</th>
	                   </tr>
	                   </thead>
	                   <tbody>
	                   <tr>
	                       <td>10</td>
	                       <td>
	                           <a onclick="goToQnaView();" style="color: #252a34; cursor:pointer;">글제목 글제목 글제목</a>
	                       </td>
	                       <td>와와</td>
	                       <td>2022-11-01</td>
	                       <td>1</td>
	                   </tr>
	                   <tr>
	                       <td>9</td>
	                       <td>
	                           <a onclick="goToQnaView();" style="color: #252a34; cursor:pointer;">글제목 글제목 글제목</a>
	                       </td>
	                       <td>와와</td>
	                       <td>2022-11-01</td>
	                       <td>1</td>
	                   </tr>
	                   <tr>
	                       <td>8</td>
	                       <td>
	                           <a onclick="goToQnaView();" style="color: #252a34; cursor:pointer;">글제목 글제목 글제목</a>
	                       </td>
	                       <td>와와</td>
	                       <td>2022-11-01</td>
	                       <td>1</td>
	                   </tr>
	                   <tr>
	                       <td>7</td>
	                       <td>
	                           <a onclick="goToQnaView();" style="color: #252a34; cursor:pointer;">글제목 글제목 글제목</a>
	                       </td>
	                       <td>와와</td>
	                       <td>2022-11-01</td>
	                       <td>1</td>
	                   </tr>
	                   <tr>
	                       <td>6</td>
	                       <td>
	                           <a onclick="goToQnaView();" style="color: #252a34; cursor:pointer;">글제목 글제목 글제목</a>
	                       </td>
	                       <td>와와</td>
	                       <td>2022-11-01</td>
	                       <td>1</td>
	                   </tr>
	                   <tr>
	                       <td>5</td>
	                       <td>
	                           <a onclick="goToQnaView();" style="color: #252a34; cursor:pointer;">글제목 글제목 글제목</a>
	                       </td>
	                       <td>와와</td>
	                       <td>2022-11-01</td>
	                       <td>1</td>
	                   </tr>
	                   <tr>
	                       <td>4</td>
	                       <td>
	                           <a onclick="goToQnaView();" style="color: #252a34; cursor:pointer;">글제목 글제목 글제목</a>
	                       </td>
	                       <td>와와</td>
	                       <td>2022-11-01</td>
	                       <td>1</td>
	                   </tr>
	                   <tr>
	                       <td>3</td>
	                       <td>
	                           <a onclick="goToQnaView();" style="color: #252a34; cursor:pointer;">글제목 글제목 글제목</a>
	                       </td>
	                       <td>와와</td>
	                       <td>2022-11-01</td>
	                       <td>1</td>
	                   </tr>
	                   <tr>
	                       <td>2</td>
	                       <td>
	                           <a onclick="goToQnaView();" style="color: #252a34; cursor:pointer;">글제목 글제목 글제목</a>
	                       </td>
	                       <td>와와</td>
	                       <td>2022-11-01</td>
	                       <td>1</td>
	                   </tr>
	                   <tr>
	                       <td>1</td>
	                       <td>
	                           <a onclick="goToQnaView();" style="color: #252a34; cursor:pointer;">글제목 글제목 글제목</a>
	                       </td>
	                       <td>와와</td>
	                       <td>2022-11-01</td>
	                       <td>1</td>
	                   </tr>
	                   </tbody>
	               </table>
	           </div>
	       </div>
	       <div class="qna-btn-wrap">
	           <a class="qna-btn qna-btn-list" href="/qnaWriteFrm.do" style="color:#fff;">글쓰기</a>
	       </div>
	       <div id="pageNavi"></div>
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
  <!-- <script src="/resources/assets/js/qnaList.js"></script> -->
  <script>
	function goToQnaView(reqPage, qnaNo) {
		location.href = "/qnaView.do?reqPage="+reqPage+"&qnaNo="+qnaNo;
	}
  </script>
</body>

</html>