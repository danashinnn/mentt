<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
</head>
<body>
	<div style="height: 600px; vertical-align: middle;">
	<h1>로딩 중........</h1>
	</div>
	<script type="text/javascript">
		// 카카오 최초 로그인시 DB에 정보넣기
		$(document).ready(function() {
			// 인가코드 가져오기
			let codeURL = new URL(window.location.href);
			let code = codeURL.searchParams.get('code');

			// 인가코드 유무 확인
			if (code != null) {
				console.log("codeURL: " + codeURL);
				console.log("code: " + code);

				/* 토큰 가져오기 */
				function selectMyAccessTocken() {
					let param = {
						"code" : code
					}

					$.ajax({
						url : '/selectMyAccessTocken.do',
						type : 'get',
						data : param, // 인가코드 보내기
						contentType : "application/json; charset=UTF-8",
						success : function(res) {
							location.href = "http://121.140.3.181" // 연동 성공 시 메인페이지로 이동하기
						},
						error : function(xhr, type) {
							console.log(xhr);
							console.log(type);
						}
					})
				}
				selectMyAccessTocken();
			} else {
				console.log("코드 존재하지 않음")
			}

		})
	</script>
</body>
</html>