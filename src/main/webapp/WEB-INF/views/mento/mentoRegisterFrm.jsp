<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/assets/css/mento/mentoRegister.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<jsp:include page="/common/header.jsp"></jsp:include>
	
	<div class="mento-register-wrap">
		<div class="register-title">
			<h1>멘토등록</h1>
		</div>
		
		<div class="mentoFrm">
			<form action="#" method="post" enctype="multipart/form-data">
				<div class="member-info" style="width: 800px; margin: 0 auto;">
					<div>
						<span>아이디</span><br>
						<input class="w3-input w3-border" type="text" name="mentoId" value=${sessionScope.m.mId }>
					</div>
					
					<div>
						<span>이름</span><br>
						<input class="w3-input w3-border" type="text" name="mentoName" value=${sessionScope.m.mName }>
					</div>
				</div>
				
				<div class="check-major-basic">
					
				</div>
			</form>
			
		</div>
	</div>
	
	

	
	
</body>
</html>