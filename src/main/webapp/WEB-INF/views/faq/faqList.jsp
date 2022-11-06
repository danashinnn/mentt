<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<link href="/resources/assets/css/faqList.css" rel="stylesheet">
  	<link href="/resources/assets/img/favicon.png" rel="icon">
</head>

<body>

 <jsp:include page="/common/header.jsp"/>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>FAQ</h2>
        <p>궁금한 점이 있으신가요?</p>
        <p>먼저 아래의 자주 묻는 질문 FAQ 리스트를 확인 해주세요!</p>
      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Events Section ======= -->
    <section id="events" class="events">
      <div class="container" data-aos="fade-up">

        <div class="row">
        	
		     <div class="faq-wrap">
		        
		        <div class="tab-wrap">
		            <ul class="tabs">
		                <li>멘티 결제</li>
		                <li>멘티 수강</li>
		                <li>멘토 인증</li>
		                <li>멘토 정산</li>
		                <li>이용 관련</li>
		            </ul>
		        </div>
		        
		        <!-- 결제 -->
		        <div class="content-wrap">
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">결제방법을 변경할 수 있나요?</div>
		                </div>
		                <div class="content-hide">
		                    <p>주문/결제하신 후에는 인터넷 상에서 결제방법을 변경하실 수 없습니다.</p>
		                    <p>주문을 취소한 후 재주문 해 주시기 바랍니다.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">상품권(문화상품권, 도서상품권 등)으로 결제할 수 있나요?</div>
		                </div>
		                <div class="content-hide">
		                    <p>아니오, 불가능합니다.</p>
		                    <p>저희 MENTT에서는 현재 개발에 총력을 기울이고 있으며, 빠른 시일내에 서비스를 제공할 수 있도록 노력하겠습니다.</p>
		                    <p>죄송합니다.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">	신용카드 결제는 되었는데 주문내역이 없습니다.</div>
		                </div>
		                <div class="content-hide">
		                    <p>신용카드 결제 즉시 진행되는 주문접수 과정중 일시적인 네트워크 장애 등으로 주문접수가 이루어지지 못한 경우입니다.</p>
		                    <p>장바구니 클릭 후 주문 및 결제를 재진행해주세요.</p>
		                    <p>주문 미접수 상태의 결제건은 2-4일 내로 승인취소가 자동 진행되니 안심하셔도 됩니다.</p>
		                    <p>나중에 혹시라도 승인 미취소 확인 하신 경우 신고해주십시오.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">결제를 취소하고 싶어요.</div>
		                    
		                </div>
		                <div class="content-hide">
		                    <p>마이페이지 > 주문내역에서 결제를 취소할 수 있습니다.</p>
		                </div>
		            </div>
		
		        </div>
		
		        <!-- 수강 -->
		        <div class="content-wrap">
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">배송지 주소 변경은 어떻게 하나요?</div>
		                </div>
		                <div class="content-hide">
		                    <p>주문하신 상품이 포장 이전 단계일 경우, 직접 배송지 주소를 변경하실 수 있습니다.</p>
		                    <p>마이페이지 > 주문배송내역 상세페이지에서 '배송지 변경' 버튼을 클릭하시면 배송지 주소를 변경하실 수 있습니다.</p>
		                    <p>단, 상품 상태가 "포장 중"으로 넘어갈 경우 직접 배송지 주소를 변경하실 수 없습니다.</p>
		                    <p>상품이 이미 택배사로 인계되어 출고된 상태에서는 배송정보 변경이 불가능합니다.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">주문을 수정(취소/변경)할 수 있나요?</div>
		                </div>
		                <div class="content-hide">
		                    <p>주문수정(취소/변경)는 주문/배송조회에서 회원 로그인 후 하실 수 있습니다.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">출고일/배송일을 지정할 수 있습니까?</div>
		                </div>
		                <div class="content-hide">
		                    <p>주문조회 시 확인 가능한 출고 및 수령예상일 보다 더 늦춰 드리는 것은 가능합니다만, 예상일 보다 더 앞당겨 출고,배송 해드리는 것은 불가능합니다.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">주문과 관련된 이메일을 받을 수 있나요?</div>
		                </div>
		                <div class="content-hide">
		                    <p>네. 고객님께서 회원가입 시 입하신 이메일 주소로 주문 완료, 배송처리 안내 등 주문과 관련된 메일이 발송되고 있습니다.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">비회원도 주문할 수 있나요?</div>
		                </div>
		                <div class="content-hide">
		                    <p>죄송하지만 비회원은 주문이 불가합니다.</p>
		                    <p>회원가입 후 이용 부탁드립니다.</p>
		                </div>
		            </div>
		        </div>
		
		        
		        <!-- 환불 -->
		        <div class="content-wrap">
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">반품/취소했는데 금액은 언제 환불되나요?</div>
		                </div>
		                <div class="content-hide">
		                    <p>반품 완료 후 영업일 기준 5일 내로 환불이 완료됩니다.</p>
		                    <p>반품 접수 완료 이후, 통상적으로 영업일 기준 1~3일 정도 소요됩니다.</p>
		                    <p>다만, 카드사 및 결제사의 사정에 따라 1~2일 정도 추가로 소요될 수 있습니다.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">결제했던 수단 말고 다른 방법으로 환불 받을 수 있나요?</div>
		                </div>
		                <div class="content-hide">
		                    <p>결제하셨던 수단으로만 환불이 가능하며, 다른 방법으로 환불은 어렵습니다.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">어떤 방식으로 환불이 진행되나요?</div>
		                </div>
		                <div class="content-hide">
		                    <p>결제하셨던 결제 수단으로 환불이 진행됩니다.</p>
		                    <p>영업일 기준으로 1~5일 정도 소요됩니다.</p>
		                    <p>환불 후 입금 및 처리는 결제 수단 고객센터 (카드사, 통신사)로 연락 주시면 더욱 빠른 확인 가능합니다.</p>
		                </div>
		            </div>
		        </div>
		
		        <!-- 배송 -->
		        <div class="content-wrap">
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">	"배송완료"로 조회 되는데 아직 못받았습니다.</div>
		                </div>
		                <div class="content-hide">
		                    <p>배송사에서 부재중이셔서 위탁해 둔 경우일 수 있으며 통상 위탁 후 휴대폰 문자메시지 통해 통지해드립니다.</p>
		                    <p>혹 아무런 통지도 못 받으셨다면 배송추적 화면의 배송영업소 또는 1대1고객상담>미배송신고 이용해 의뢰해주십시오.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">	"출고완료" 상태인데 배송상황 추적이 안 됩니다.</div>
		                </div>
		                <div class="content-hide">
		                    <p>배송상황 추적은 출고 당일 집하(배송사로 인계)된 경우 출고완료 약 2시간 이후 부터 가능합니다.</p>
		                    <p>아직 시간이 경과하지 않은 경우 나중에 다시 조회해보세요.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">해외 배송도 가능한가요?</div>
		                </div>
		                <div class="content-hide">
		                    <p>현재 국내 배송만 가능하며, 해외 배송은 지원하지 않고 있습니다.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">군부대도 배송이 됩니까?</div>
		                </div>
		                <div class="content-hide">
		                    <p>배송주소지가 군부대, 교도소 등 민간인 출입 제한 지역인 경우에도 배송이 가능합니다.</p>
		                    <p>다만, 반드시 우체국택배로 주문해주셔야 합니다.</p>
		                    <p>우체국택배로 선택하시면 부대 혹은 행정시설내 우편물 관리부서 통해 수취인께 전달이 됩니다.</p>
		                    <p>수취인명,계급(혹은 보호실 등) 등 수령인정보를 상세히 기재해주십시오.</p>
		                </div>
		            </div>
		        </div>
		
		        <!-- 회원 -->
		        <div class="content-wrap">
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">회원가입은 어떻게 합니까?</div>
		                </div>
		                <div class="content-hide">
		                    <p>회원가입은 MENTT 메인화면 상단 회원가입을 클릭하시면 됩니다. 실명인증을 거쳐 회원으로 가입하실 수 있습니다.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">회원 이메일 주소와 비밀번호를 변경하고 싶습니다.</div>
		                </div>
		                <div class="content-hide">
		                    <p>이메일주소, 비밀번호 등 개인정보는 로그인 후 마이페이지 > 수정/탈퇴 에서 직접 수정하실 수 있습니다. </p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">아이디/비밀번호를 잊어버렸습니다.</div>
		                </div>
		                <div class="content-hide">
		                    <p>아이디/비밀번호 분실 시 로그인 > 아이디/비밀번호 찾기 에서 이메일 인증 후 찾으실 수 있습니다.</p>
		                    <p>찾기가 어려우신 경우 고객센터로 문의하시면 확인 도와드리겠습니다.</p>
		                </div>
		            </div>
		            <div class="tabcontent">
		                <div class="content">
		                    <div class="content-title">회원 탈퇴는 어떻게 합니까?</div>
		                    
		                </div>
		                <div class="content-hide">
		                    <p>회원탈퇴도 역시 마이페이지 > 수정/탈퇴 에서 MENTT를 탈퇴하실 수 있습니다.</p>
		                    <p>탈퇴를 위해서는 우선 로그인이 필요합니다.</p>
		                    <p>탈퇴하시기 전 의견란에 탈회사유 등 당부해주실 사항 남겨주시면 소중히 활용하겠습니다.</p>
		                    <br>
		                    <p>회원 탈퇴시 주문정보를 제외한 모든 개인정보는 즉시 삭제됩니다.</p>
		                    <p>주문정보는 '전자상거래 등에서의 소비자보호에 관한 법률>에 의하여 3~5년간 보관하게 되어 있습니다.</p>
		                </div>
		            </div>
		        </div>
			</div>
        	
          <!--
          <div class="col-md-6 d-flex align-items-stretch">
            <div class="card">
              <div class="card-img">
                <img src="/resources/assets/img/events-1.jpg" alt="...">
              </div>
              <div class="card-body">
                <h5 class="card-title"><a href="">Introduction to webdesign</a></h5>
                <p class="fst-italic text-center">Sunday, September 26th at 7:00 pm</p>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</p>
              </div>
            </div>
          </div>
           
          <div class="col-md-6 d-flex align-items-stretch">
            <div class="card">
              <div class="card-img">
                <img src="/resources/assets/img/events-2.jpg" alt="...">
              </div>
              <div class="card-body">
                <h5 class="card-title"><a href="">Marketing Strategies</a></h5>
                <p class="fst-italic text-center">Sunday, November 15th at 7:00 pm</p>
                <p class="card-text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>
              </div>
            </div>
          </div>
          -->
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
  <script src="/resources/assets/js/faqList.js"></script>
</body>

</html>