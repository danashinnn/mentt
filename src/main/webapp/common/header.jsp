<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Mentt</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/assets/img/favicon.png" rel="icon">
  <link href="/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <!-- Template Main CSS File -->
  <link href="/resources/assets/css/style.css" rel="stylesheet">
  
  <!-- jQuery 추가 -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <!-- fontawesome icon 추가 -->
  <script src="https://kit.fontawesome.com/7b7a761eb5.js" crossorigin="anonymous"></script>
	<style>
		#wBtn:hover{
			background-color: white!important;
			color : #5fcf80!important;
			transition-duration : 0.3s;
			
		}
		
		.theme{
			width: 100px;
			height: 40px;
			background-color: white;
			text-align: center;
			line-height: 40px;
			border-radius: 20px;
			display: inline-block;
			border:1px solid gray;
			color: gray;
		}
		
		.theme:hover {
			
			cursor: pointer;
		}
		
		.mojor{
			width: 100px;
			height: 40px;
			background-color: white;
			text-align: center;
			line-height: 40px;
			border-radius: 10px;
			color: white;
			display: inline-block;
			border:1px solid gray;
			color: gray;
		}
		
		.mojor:hover{
			
			cursor: pointer;
		}
		
		.filebox label {
		  display: inline-block;
		  padding: .5em .75em;
		  color: #fff;
		  font-size: inherit;
		  line-height: normal;
		  vertical-align: middle;
		  background-color: #5cb85c;
		  cursor: pointer;
		  border: 1px solid #4cae4c;
		  border-radius: .25em;
		  -webkit-transition: background-color 0.2s;
		  transition: background-color 0.2s;
		}
		
		.filebox label:hover {
		  background-color: #6ed36e;
		}
		
		.filebox label:active {
		  background-color: #367c36;
		}
		
		.filebox input[type="file"] {
		  position: absolute;
		  width: 1px;
		  height: 1px;
		  padding: 0;
		  margin: -1px;
		  overflow: hidden;
		  clip: rect(0, 0, 0, 0);
		  border: 0;
		}
		
		.fileList>div{
			position: relative;
		}
		
		.delFile{
			position: absolute;
			right: 0px;
		}
	</style>
    <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="/">Mentt</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="/resources/assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="active" href="/">Home</a></li>
          <li><a href="/common/about.jsp">About</a></li>
          <li><a href="/common/courses.jsp">Courses</a></li>
          <li><a href="/common/trainers.jsp">Trainers</a></li>
          <li><a href="/common/events.jsp">이벤트</a></li>
          <li><a href="/noticeList.do?reqPage=1">공지사항</a></li>
          <li><a href="/common/pricing.jsp">가격안내</a></li>

          <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><span onclick="document.getElementById('id01').style.display='block'" id="wBtn" class="w3-button w3-white" style="font-weight: 500!important; font-size: 15px!important;">멘토등록</span></li>
              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">드롭다운1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="/faqList.do">FAQ</a></li>
              <li><a href="/qnaList.do?reqPage=1">QNA</a></li>
            </ul>
          </li>
          <li><a href="/common/contact.jsp">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
	<c:choose>
		<c:when test="${empty sessionScope.m }">
      		<a href="/loginFrm.do" class="get-started-btn">로그인</a>
     	</c:when>
     	<c:otherwise>
     		<a href="/myPageFrm.do" class="get-started-btn">마이페이지</a>
     		<a href="/logout.do" class="get-started-btn">로그아웃</a>
     	</c:otherwise>
	</c:choose>
	
		
    </div>
    
    
  </header><!-- End Header -->
  
  <div id="id01" class="w3-modal">
  <div class="w3-modal-content w3-animate-top">

    <header class="w3-container w3-teal" style="background-color: #5fcf80!important;">
      <span onclick="document.getElementById('id01').style.display='none'"
      class="w3-button w3-display-topright">&times;</span>
      <h2>멘토 등록</h2>
    </header>

    <div class="w3-container" style="margin-top: 50px;">
      	<input type="hidden" name="mNo" value="${sessionScope.m.MNo }">
	      	<div style="display: flex; justify-content: center;">
		      	<div style="margin-right: 20px;">
		      		<label for="mentoName" style="font-weight: 500">이름</label>
		      		<input type="text" class="w3-input w3-border w3-round-large" id="mentoName" name="mentoName" value="${sessionScope.m.MName }" style="width: 400px;">
		      	</div>
		      	
		      	<div style="margin-left: 20px;">
		      		<label for="mentoId" style="font-weight: 500">아이디</label>
		      		<input type="text" class="w3-input w3-border w3-round-large" id="mentoId" name="mentoId" value="${sessionScope.m.MId }" style="width: 400px;">
		      	</div>
	      </div>
	      
	      <div style="border-bottom: 1px solid lightgray; padding-bottom: 50px;">
	      	<div style="text-align: center; margin-top: 50px;">
	      		<h2>공통과목</h2>
	      	</div>
	      	
	      	<div style="text-align: center; margin-top: 30px;">
	      		<label for="kor" class="mojor" style="margin-right: 10px;">국어</label>
		      	<input type="checkbox" id="kor" name="mentoMajor" value="국어" style="display: none;">
		      	
		      	<label for="gibaek" class="mojor" style="margin-left: 10px; margin-right: 10px;">기하와 벡터</label>
		      	<input type="checkbox" id="gibaek" name="mentoMajor" value="기하와 백터" style="display: none;">
		      	
		      	<label for="stats" class="mojor" style="margin-left: 10px; margin-right: 10px;">확률과 통계</label>
		      	<input type="checkbox" id="stats" name="mentoMajor" value="확률과통계" style="display: none;">
		      	
		      	<label for="eng" class="mojor" style="margin-left: 10px;">영어</label>
		      	<input type="checkbox" id="eng" name="mentoMajor" value="영어" style="display: none;">
	      	</div>
	      </div>
	      
	      <div style="text-align: center; margin-top: 50px;">
	      	<label for="moon" class="theme">문과</label>
	      	<input type="radio" id="moon" name="mojorTheme" value="문과" style="display: none;">
	      	<label for="lee" class="theme" style="margin-left: 30px; margin-right: 30px;">이과</label>
	      	<input type="radio" id="lee" name="mojorTheme" value="이과" style="display: none;">
	      	<label for="yeah" class="theme">예체능</label>
	      	<input type="radio" id="yeah" name="mojorTheme" value="예체능" style="display: none;">
	      </div>
	      
	      <div class="moon-content" style="margin-top: 50px; text-align: center; border-bottom: 1px solid lightgray; border-top: 1px solid lightgray; padding-top:30px; padding-bottom:30px;">
	      	
	      	<label for="ethics" class="mojor" style="margin-left: 10px; margin-right: 10px;">생활과윤리</label>
	      	<input type="checkbox" id="ethics" name="mentoMajor" value="생활과윤리" style="display: none;">
	      	
	      	<label for="culture" class="mojor" style="margin-left: 10px; margin-right: 10px;">사회문화</label>
	      	<input type="checkbox" id="culture" name="mentoMajor" value="사회문화" style="display: none;">
	      	
	      	<label for="korearth" class="mojor" style="margin-left: 10px; margin-right: 10px;">한국지리</label>
	      	<input type="checkbox" id="korearth" name="mentoMajor" value="한국지리" style="display: none;">
	      	
	      	<label for="nationearth" class="mojor" style="margin-left: 10px; margin-right: 10px;">세계지리</label>
	      	<input type="checkbox" id="nationearth" name="mentoMajor" value="세계지리" style="display: none;">
	      	
	      	<label for="thought" class="mojor" style="margin-left: 10px; margin-right: 10px;">윤리와 사상</label>
	      	<input type="checkbox" id="thought" name="mentoMajor" value="윤리와 사상" style="display: none;">
	      	
	      	<br>
	      	<br>
	      	
	      	<label for="rule" class="mojor" style="margin-left: 10px; margin-right: 10px;">법과 정치</label>
	      	<input type="checkbox" id="rule" name="mentoMajor" value="법과 정치" style="display: none;">
	      	
	      	<label for="asia" class="mojor" style="margin-left: 10px; margin-right: 10px;">동아시아사</label>
	      	<input type="checkbox" id="asia" name="mentoMajor" value="동아시아사" style="display: none;">
	      	
	      	<label for="world" class="mojor" style="margin-left: 10px; margin-right: 10px;">세계사</label>
	      	<input type="checkbox" id="world" name="mentoMajor" value="세계사" style="display: none;">
	      	
	      	<label for="economic" class="mojor">경제</label>
	      	<input type="checkbox" id="economic" name="mentoMajor" value="경제" style="display: none;">
	      </div>
	      
	      <div class="lee-content" style="margin-top: 50px; text-align: center; border-bottom: 1px solid lightgray; border-top: 1px solid lightgray; padding-top:30px; padding-bottom:30px; display: none;">
	      	<label for="life1" class="mojor">생명과학1</label>
	      	<input type="checkbox" id="life1" name="mentoMajor" value="생명과학1" style="display: none;">
	      	
	      	<label for="chemi1" class="mojor" style="margin-left: 10px; margin-right: 10px;">화확1</label>
	      	<input type="checkbox" id="chemi1" name="mentoMajor" value="화확1" style="display: none;">
	      	
	      	<label for="earth1" class="mojor" style="margin-left: 10px; margin-right: 10px;">지구과학1</label>
	      	<input type="checkbox" id="earth1" name="mentoMajor" value="지구과학1" style="display: none;">
	      	
	      	<label for="physical1" class="mojor">물리1</label>
	      	<input type="checkbox" id="physical1" name="mentoMajor" value="물리1" style="display: none;">
	      	
	      	<br>
	      	<br>
	      	
	      	<label for="life2" class="mojor">생명과학2</label>
	      	<input type="checkbox" id="life2" name="mentoMajor" value="생명과학2" style="display: none;">
	      	
	      	<label for="chemi2" class="mojor" style="margin-left: 10px; margin-right: 10px;">화확2</label>
	      	<input type="checkbox" id="chemi2" name="mentoMajor" value="화확2" style="display: none;">
	      	
	      	<label for="earth2" class="mojor" style="margin-left: 10px; margin-right: 10px;">지구과학2</label>
	      	<input type="checkbox" id="earth2" name="mentoMajor" value="지구과학2" style="display: none;">
	      	
	      	<label for="physical2" class="mojor">물리2</label>
	      	<input type="checkbox" id="physical2" name="mentoMajor" value="물리2" style="display: none;">
	      </div>
	      
	      <div class="yeah-content" style="margin-top: 50px; text-align: center; border-bottom: 1px solid lightgray; border-top: 1px solid lightgray; padding-top:30px; padding-bottom:30px; display: none;">
	      	
	      	<label for="music" class="mojor">음악</label>
	      	<input type="checkbox" id="music" name="mentoMajor" value="음악" style="display: none;">
	      	
	      	<label for="art" class="mojor" style="margin-left: 10px; margin-right: 10px;">미술</label>
	      	<input type="checkbox" id="art" name="mentoMajor" value="미술" style="display: none;">
	      	
	      	<label for="exercise" class="mojor">체육</label>
	      	<input type="checkbox" id="exercise" name="mentoMajor" value="체육" style="display: none;">
	      </div>
	      
	      <div class="mentoLicense" style=" margin-top: 50px;">
	      	<div style="display: flex; justify-content:center; width:500px; height:50px; margin: 0 auto;">
	      		<div style="line-height: 50px; text-align: center; margin-right: 30px;">
	      			첨부파일
	      		</div>
	      		
	      		<div>
	      			<div class="filebox" style="line-height: 50px; text-align: center; margin-left: 30px;">
					  <label for="ex_file">업로드</label>
					  <input type="file" id="ex_file" name="exFile" multiple="multiple">
					</div>
	      		</div>
	      	</div>
	      </div>
	      
	     
	      <div class="fileList" style="width: 500px; margin: 0 auto; margin-top: 20px; padding-top: 20px; padding-bottom: 20px; display: none; border-top: 1px solid lightgray; border-bottom: 1px solid lightgray;">
	      	
	      </div>
	      
	      <div class="mentoBtnFrm" style="text-align: center; margin-top: 50px; border-top: 1px solid lightgray; padding-top: 50px; margin-bottom: 50px;">
	      	<button type="button" class="btn btn-success" style="background-color: #5fcf80; border-color: #5fcf80;" id="insertMento">등록하기</button>
	      </div>

    </div>

    <footer class="w3-container w3-teal" style="background-color: #5fcf80!important;">
      <p>MENTT</p>
    </footer>

  </div>
</div>
  
  <script type="text/javascript">
  
  
  	const fileArr = new Array();
  	
  	$("#ex_file").on("change", function(){
  		
  		console.log("열려라!");
  		const files = $("#ex_file")[0].files;
  		if(files > 5){
  			alert("파일은 5개를 넘을 수 없습니다.");
  		}else{
  			$(".fileList").slideDown();
  			for(let i = 0; i < files.length; i++){
  				fileArr.push(files[i]);
  				
  				console.log(fileArr.length);
  				const div = $("<div>");
  				if(fileArr.length > 5){
  					alert("파일은 최대 5개를 넘을 수 없습니다.");
  					fileArr.pop();
  					break;
  				}
  				div.append("<span>" + files[i].name + "</span><span class='delFile' onclick='delFile(this)'>x</span>");
  				$(".fileList").append(div);
  			}
  		}
  		
  	});
  	
  	function delFile(obj){
  		
  		const fileName = $(obj).prev().text(); 
  		
  		for(let i = 0; i < fileArr.length; i++){
  			if(fileArr[i].name == fileName){
  				fileArr.splice(i,1);
  				break;
  			}
  		}
  		
  		if(fileArr.length == 0){
  			$(".fileList").slideUp();
  		}
  		
  		$(obj).parent().remove();
  		console.log(fileArr.length)
  		
  	}
  	
  	$("#insertMento").on("click", function(){
  		console.log($("[name=mentoMajor]:checked").length);
		
  		let major = "";
  		
  		const mNo = $("[name=mNo]").val();
  		const mentoName = $("[name=mentoName]").val();
  		const mentoId = $("[name=mentoId]").val();
  		$("[name=mentoMajor]:checked").each(function(index){
  			if(index != 0){
  				major += ",";
  			}
  			major += $(this).val();
  		});
  		const mojorTheme = $("[name=mojorTheme]:checked").val();
  		
  		
  		if($("[name=mentoMajor]:checked").length > 5){
  			alert("최대 5개를 선택할 수 있습니다.");
  			$(this).attr("type", "button");
  		}else if($("[name=mentoMajor]:checked").length == 0){
  			alert("과목을 선택하세요!");
  			$(this).attr("type", "button");
  		}else if($("[name=mentoMajor]:checked").length != fileArr.length){
  			alert("선택 수와 같은 파일을 넣어야 합니다.");
  			$(this).attr("type", "button");
  		}else{
  			console.log("가보자고");
  			
  			const formData = new FormData();
  			
  			const files = $("#ex_file")[0].files;
  			
  			formData.append("mNo", mNo);
  			formData.append("mentoName", mentoName);
  			formData.append("mentoId", mentoId);
 			formData.append("mentoMajor", major);
  			formData.append("mojorTheme", mojorTheme);
  			for(let i = 0; i < fileArr.length; i++){
  				formData.append("exFile", files[i]);
  			}
  			
  			$.ajax({
  				url : "/insertMento.do",
  				type : "post",
  				contentType: false,               // * 중요 *
	  		    processData: false,               // * 중요 *
	  		    enctype : 'multipart/form-data',
  				data : formData,
  				success : function(data){
  					console.log(data);
  					
  				}
  			});
  			
  			$(this).attr("type", "button");
  		}
  		
  		
  	});
  
  	$(".mojor").on("click", function(){
  		
  		const index = $(".mojor").index(this);
  		
  		console.log($("[name=mentoMajor]").eq(index).val());
  		
  		if(!$("input[name=mentoMajor]").eq(index).prop("checked")){
  			$(this).css("border-color", "#5fcf80").css("color", "#5fcf80");
  			console.log($("input[name=mentoMajor]").eq(index).prop("checked"));
  		}else{
  			$(this).css("border-color", "lightgray").css("color", "lightgray");
  			console.log("0");
  		}
  		
  	});
  
	$(".theme").on("click", function(){
		console.log("야임마!");
		const index = $(".theme").index(this);
		
		console.log($("[name=mojorTheme]").eq(index).val());
		
		const mojorTheme = $("[name=mojorTheme]").eq(index).val();
		
		if(mojorTheme == "문과"){
			$(".theme").eq(0).css("border-color", "#5fcf80").css("color", "#5fcf80");
			$(".theme").eq(1).css("border-color", "gray").css("color", "gray");
			$(".theme").eq(2).css("border-color", "gray").css("color", "gray");
			$(".moon-content").show();
			$(".lee-content").hide();
			$(".yeah-content").hide();
		}else if(mojorTheme == "이과"){
			$(".theme").eq(1).css("border-color", "#5fcf80").css("color", "#5fcf80");
			$(".theme").eq(0).css("border-color", "gray").css("color", "gray");
			$(".theme").eq(2).css("border-color", "gray").css("color", "gray");
			$(".lee-content").show();
			$(".moon-content").hide();
			$(".yeah-content").hide();
		}else{
			$(".theme").eq(2).css("border-color", "#5fcf80").css("color", "#5fcf80");
			$(".theme").eq(0).css("border-color", "gray").css("color", "gray");
			$(".theme").eq(1).css("border-color", "gray").css("color", "gray");
			$(".yeah-content").show();
			$(".moon-content").hide();
			$(".lee-content").hide();
		}
	});
	
	$(".theme").eq(0).click();
	
  </script>

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  