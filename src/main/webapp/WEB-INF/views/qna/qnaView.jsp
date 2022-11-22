<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<link href="/resources/assets/css/qna/qnaView.css" rel="stylesheet">
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
	        
	        <div class="qna-content-wrap">
	            <div class="qna-title-wrap">
	                <div class="qna-content-title">
	                	${q.qnaTitle }
	                </div>
	            </div>
	            <div class="qna-content-info">
		            <div class="qna-writer">
		                	<span class="qna-span">작성자</span>&nbsp;&nbsp; ${q.qnaWriter }
		            </div>
		            <div class="qna-date">
		                	<span class="qna-span">작성일</span>&nbsp;&nbsp; ${q.qnaRegDate }
		            </div>
		            <div class="qna-count">
							<span class="qna-span">조회</span>&nbsp;&nbsp; ${q.qnaReadCount }
		            </div>
	            </div>
	            <div class="qna-content-file">
	            	<c:choose>
	            		<c:when test="${q.fileList[0] eq null}">
	            			<p style="color:#ccc">첨부 파일이 없습니다.</p>
	            		</c:when>
	            		<c:otherwise>
	            			<c:forEach items="${q.fileList }" var="f">
								<p><a href="/fileDown.do?fileNo=${f.fileNo }">${f.filename }${f.fileExt }</a></p>
							</c:forEach>
	            		</c:otherwise>
	            	</c:choose>
	            </div>
	            <div class="qna-content">
	                	${q.qnaContent }
	            </div>
        </div>
        
        <div class="qna-button-wrap">
            <a class="qna-btn qna-btn-list" href="/qnaList.do?reqPage=${reqPage}">목록</a>
            <c:if test="${sessionScope.m.MId eq q.qnaWriter}">
            	<button class="qna-btn qna-btn-remove" onclick="qnaDelete();">삭제</button>
            	<button class="qna-btn qna-btn-remove" onclick="qnaUpdate();">수정</button>
            </c:if>
        </div>
	        
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