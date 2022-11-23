<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<link href="/resources/assets/css/qna/qnaList.css" rel="stylesheet">
  	<link href="/resources/assets/img/favicon.png" rel="icon">
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
	                   <c:forEach items="${list }" var="q">
							<tr>
								<td>${q.qnaNo }</td>
								<td>
									<a href="/qnaView.do?reqPage=${reqPage }&qnaNo=${q.qnaNo }" style="color: #252a34; cursor:pointer;">${q.qnaTitle }</a>
								</td>
								<td>${q.qnaWriter }</td>
								<td>${q.qnaRegDate }</td>
								<td>${q.qnaReadCount }</td>
							</tr>
					   </c:forEach>
	                   </tbody>
	               </table>
	           </div>
	       </div>
	       <c:if test="${sessionScope.m ne null}">
		       <div class="qna-btn-wrap">
		           <a class="qna-btn qna-btn-list" href="/qnaWriteFrm.do" style="color:#fff;">글쓰기</a>
		       </div>
	       </c:if>
	       <div id="pageNavi">${pageNavi }</div>
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
</body>

</html>