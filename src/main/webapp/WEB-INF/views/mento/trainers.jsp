<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  	<link href="/resources/assets/img/favicon.png" rel="icon">
  	
  	<style type="text/css">
  		.category>a{
  			font-size: 40px;
  			color : gray;
  		}
  		
  		.category>a:nth-child(2){
			margin-left: 20px;
			margin-right: 20px;
		}
		
  	</style>
</head>

<body>

  <jsp:include page="/common/header.jsp"/>

  <main id="main" data-aos="fade-in">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
      <div class="container">
        <h2>멘토 찾기</h2>
        <p>자신이 원하는 과목을 선택하여 멘토를 선택하세요!</p>
      </div>
    </div><!-- End Breadcrumbs -->
    
    <div class="category" style="margin-top: 50px; text-align: center;">
    	<a href="#">전체</a>
    	<a href="#">프론트엔드</a>
    	<a href="#">백엔드</a>
    </div>

    <!-- ======= Trainers Section ======= -->
    <section id="trainers" class="trainers">
      <div class="container" data-aos="fade-up">

        <div class="row" data-aos="zoom-in" data-aos-delay="100">
          
          
          <c:choose>
          	<c:when test="${empty list }">
          		<div class="msg_content">
          			${msg }
          		</div>
          	</c:when>
          	
          	<c:otherwise>
          		<c:forEach items="${list }" var="mt">
          			<div class="col-lg-4 col-md-6 d-flex align-items-stretch" style="width: 400px; margin: 0 auto;">
		            <div class="member" style="width: 400px;">
		             <!-- <img src="/resources/assets/img/trainers/trainer-1.jpg" class="img-fluid" alt="">  --> 
		              <div class="member-content" style="margin-top: 50px;">
		                <h4>${mt.mentoName }</h4>
		                <span>${mt.mojorTheme }</span>
		                <span>${mt.mentoMajor }</span>
		                <span>대표경력 : ${mt.representCareer }</span>
		                <p>
		                  ${mt.mentoComment }
		                </p>
		                
		              </div>
		            </div>
		          </div>
          		</c:forEach>
          	</c:otherwise>
          </c:choose>

        </div>

      </div>
    </section><!-- End Trainers Section -->

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