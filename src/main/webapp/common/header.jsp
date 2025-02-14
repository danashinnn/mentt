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
		
		.man>button{
			height: 40px;
			line-height: 40px;
			background-color: #5fcf80;
			border : 1px solid #5fcf80;
			color: white;
		}
		
		table tr{
			height: 50px;
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
          <li><a href="/selectAllMento.do?reqPage=1">Trainers</a></li>
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
              <li><a href="/qnaList.do?reqPage=1">Q&A</a></li>
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
	      
	      <div style="text-align: center; margin-top: 50px;">
	      	<label for="moon" class="theme">프론트엔드</label>
	      	<input type="radio" id="moon" name="mojorTheme" value="프론트엔드" style="display: none;">
	      	<label for="lee" class="theme" style="margin-left: 30px; margin-right: 30px;">백엔드</label>
	      	<input type="radio" id="lee" name="mojorTheme" value="백엔드" style="display: none;">
	      </div>
	      
	      <div class="moon-content" style="margin-top: 50px; text-align: center; border-bottom: 1px solid lightgray; border-top: 1px solid lightgray; padding-top:30px; padding-bottom:30px;">
	      	
	      	<label for="ethics" class="mojor" style="margin-left: 10px; margin-right: 10px;">HTML</label>
	      	<input type="checkbox" id="ethics" name="mentoMajor" value="HTML" style="display: none;">
	      	
	      	<label for="culture" class="mojor" style="margin-left: 10px; margin-right: 10px;">CSS</label>
	      	<input type="checkbox" id="culture" name="mentoMajor" value="CSS" style="display: none;">
	      	
	      	<label for="korearth" class="mojor" style="margin-left: 10px; margin-right: 10px;">Javascript</label>
	      	<input type="checkbox" id="korearth" name="mentoMajor" value="Javascript" style="display: none;">
	      	
	      	<label for="nationearth" class="mojor" style="margin-left: 10px; margin-right: 10px;">jQuery</label>
	      	<input type="checkbox" id="nationearth" name="mentoMajor" value="jQuery" style="display: none;">
	      	
	      	<br>
	      	<br>
	      	
	      	<label for="thought" class="mojor" style="margin-left: 10px; margin-right: 10px;">Ajax</label>
	      	<input type="checkbox" id="thought" name="mentoMajor" value="Ajax" style="display: none;">
	      	
	      	<label for="rule" class="mojor" style="margin-left: 10px; margin-right: 10px;">React</label>
	      	<input type="checkbox" id="rule" name="mentoMajor" value="React" style="display: none;">
	      	
	      	<label for="asia" class="mojor" style="margin-left: 10px; margin-right: 10px;">VueJs</label>
	      	<input type="checkbox" id="asia" name="mentoMajor" value="VueJs" style="display: none;">
	      	
	      	<label for="world" class="mojor" style="margin-left: 10px; margin-right: 10px;">Angular</label>
	      	<input type="checkbox" id="world" name="mentoMajor" value="Angular" style="display: none;">
	      	
	      </div>
	      
	      <div class="lee-content" style="margin-top: 50px; text-align: center; border-bottom: 1px solid lightgray; border-top: 1px solid lightgray; padding-top:30px; padding-bottom:30px; display: none;">
	      	<label for="life1" class="mojor">JAVA</label>
	      	<input type="checkbox" id="life1" name="mentoMajor" value="JAVA" style="display: none;">
	      	
	      	<label for="chemi1" class="mojor" style="margin-left: 10px; margin-right: 10px;">PHP</label>
	      	<input type="checkbox" id="chemi1" name="mentoMajor" value="PHP" style="display: none;">
	      	
	      	<label for="earth1" class="mojor" style="margin-left: 10px; margin-right: 10px;">PYTHON</label>
	      	<input type="checkbox" id="earth1" name="mentoMajor" value="PYTHON" style="display: none;">
	      	
	      	<label for="physical1" class="mojor">Node.js</label>
	      	<input type="checkbox" id="physical1" name="mentoMajor" value="Node.js" style="display: none;">
	      	
	      	<br>
	      	<br>
	      	
	      	<label for="life2" class="mojor">C#</label>
	      	<input type="checkbox" id="life2" name="mentoMajor" value="C#" style="display: none;">
	      	
	      	<label for="chemi2" class="mojor" style="margin-left: 10px; margin-right: 10px;">C++</label>
	      	<input type="checkbox" id="chemi2" name="mentoMajor" value="C++" style="display: none;">
	      	
	      	<label for="earth2" class="mojor" style="margin-left: 10px; margin-right: 10px;">C언어</label>
	      	<input type="checkbox" id="earth2" name="mentoMajor" value="C언어" style="display: none;">
	      	
	      	<label for="physical2" class="mojor">Spring</label>
	      	<input type="checkbox" id="physical2" name="mentoMajor" value="Spring" style="display: none;">
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
	      
	      <div style="margin : 0 auto; margin-top: 30px; border-top: 1px solid lightgray;">
	      	<table class="careerTbl" style="width: 800px; margin: 0 auto; margin-top: 30px;">
	      		<tr>
	      			<th style="text-align: center;">대표경력</th>
	      			<td>
	      				<input class="w3-input w3-border w3-round-large" type="text" name="representCareer">
	      			</td>
	      		</tr>
	      		
	      		<tr>
	      			<th style="text-align: center;">경력</th>
	      			<td>
	      				<input class="w3-input w3-border w3-round-large" type="text" name="career">
	      			</td>
	      		</tr>
	      	</table>
	      	<div style="text-align: right; margin-right: 35px;">
	      		<button onclick="moreBtn()" style="width: 100px; height: 50px; background-color: #5fcf80; border: none; color: white;">경력추가</button>
	      	</div>
	      	
	      </div>
	      
	      <div style="margin : 0 auto; margin-top: 30px; border-top: 1px solid lightgray;">
	      	<p style="margin-top: 20px; margin-left: 50px;">소개글</p>
	      	<div class="form-floating" style="margin-top: 10px; margin-left: 50px;">
				<textarea class="form-control" placeholder="Leave a comment here"
					name="mentoComment" id="floatingTextarea2" style="height: 100px; resize: none; width: 750px;"></textarea>
				<label for="floatingTextarea2">나를 소개하는 글을 남겨보세요!</label>
			</div>
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
  
  	function moreBtn(){
  		console.log("가보자고");
  		
  		const tr = $("<tr>");
  		const th = $("<th style='text-align: center;'>경력</th>");
  		const td = $("<td><input class='w3-input w3-border w3-round-large' type='text' name='career'></td>")
  		
  		tr.append(th).append(td);
  		$(".careerTbl").append(tr);
  	}
  
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
  		let career = "";
  		
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
  		const mentoComment = $("[name=mentoComment]").val();
  		const representCareer = $("[name=representCareer]").val();
  		$("[name=career]").each(function(index){
  			if(index != 0){
  				career += ",";
  			}
  			career += $(this).val();
  		});
  		
  		if($("[name=mentoMajor]:checked").length > 5){
  			alert("최대 5개를 선택할 수 있습니다.");
  			$(this).attr("type", "button");
  		}else if($("[name=mentoMajor]:checked").length == 0){
  			alert("과목을 선택하세요!");
  			$(this).attr("type", "button");
  		}else if($("[name=mentoMajor]:checked").length != fileArr.length){
  			alert("선택 수와 같은 파일을 넣어야 합니다.");
  			$(this).attr("type", "button");
  		}else if($("[name=mentoComment]").val() == ""){
  			alert("소개글을 입력하세요");
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
  			formData.append("mentoComment", mentoComment);
  			formData.append("representCareer", representCareer);
  			formData.append("career", career);
  			
  			$.ajax({
  				url : "/insertMento.do",
  				type : "post",
  				contentType: false,               // * 중요 *
	  		    processData: false,               // * 중요 *
	  		    enctype : 'multipart/form-data',
  				data : formData,
  				success : function(data){
  					console.log(data);
  					$(".w3-container>div").hide();
  					
  					const div = $("<div style='text-align: center;'>");
  					div.append("<h1 style='text-align: center;'>멘토 등록 완료</h1>")
  					div.append("<img src='/resources/img/센세.png'>");
  					div.append("<div class='man' style='margin-bottom: 40px;'><button onclick='goMentoPage(" + formData.get("mNo") + ");'>멘토페이지로 이동</button></div>");
  					
  					$(".w3-container").eq(1).append(div);
  				}
  			});
  			
  			$(this).attr("type", "button");
  		}
  		
  		
  	});
  	
  	function goMentoPage(mNo){
  		location.href = "/mentoPage.do?mNo=" + mNo;
  	}
  
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
		
		if(mojorTheme == "프론트엔드"){
			$(".theme").eq(0).css("border-color", "#5fcf80").css("color", "#5fcf80");
			$(".theme").eq(1).css("border-color", "gray").css("color", "gray");
			
			$(".moon-content").show();
			$(".lee-content").hide();
			
		}else if(mojorTheme == "백엔드"){
			$(".theme").eq(1).css("border-color", "#5fcf80").css("color", "#5fcf80");
			$(".theme").eq(0).css("border-color", "gray").css("color", "gray");
			
			$(".lee-content").show();
			$(".moon-content").hide();
			
		}
	});
	
	$(".theme").eq(0).click();
	
  </script>

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  