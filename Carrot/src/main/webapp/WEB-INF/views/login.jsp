<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>

<style type="text/css">
.center{
	margin: auto;
	width: 30%;
	border: 1px solid black;
	padding: 10px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>

</head>
<body>

<!-- 메인로고 이미지파일 삽입 -->
<div class="center">
 <img src="resources/image/mainLogo.png">
</div>

<!-- 로그인 정보입력 박스 -->
<div class="center">
	<form id="frm" action="loginAf.do" method="post">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" id="id" name="id" size="20"><br>
					<input type="checkbox" id="chk_save_id"> 아이디 저장
				</td>
			</tr>		
			<tr>
				<th>패스워드</th>
				<td>
					<input type="password" id="pw" name="pw" size="20"><br>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="button" onclick="login()">로그인</button>
					<a href="regi.do">회원가입</a>
				</td>
			</tr>	
		</table>
	</form>
</div>

<script type="text/javascript">

	// 로그인 버튼 클릭
	function login(){
		// 아이디란이 공백일 경우
		if($("#id").val().trim() == ""){
			alert("아이디를 입력해 주십시오.");
		}
		// 비밀번호란이 공백일 경우
		else if($("#pw").val().trim() == ""){
			alert("비밀번호를 입력해 주십시오.");
		}
		// 아이디 비밀번호 둘다 입력했을시 경우
		else{
			$("#frm").submit();	//form실행
		}
	}

	let user_id = $.cookie("user_id");
	
	if(user_id != null){	// cookie에 저장된 값이 있을때
		$("#id").val(user_id);
	$("#chk_save_id").prop("checked", true);
	}

	// 체크박스 누를때 함수
	$("#chk_save_id").click(function(){
		if($("#chk_save_id").is(":checked")){	// 체크박스를 체크했을때
			
			// 아이디를 입력하지 않았을때
			if($("#id").val().trim() == ""){
				alert("ID를 먼저 입력해 주십시오.");	// 선입력 알림창 표시
				$("#chk_save_id").prop("checked", false);	//체크박스 체크취소
				$("#id").val("");	// 아이디랑 공백유지
			}
			// 아이디를 입렵했을때
			else{
				$.cookie("user_id", $("#id").val().trim(), {expires:7, path:'./'});
			}
		}
		else{	// 체크박스를 취소했을때
			$.removeCookie("user_id", {path:'./'});
		}
	});

</script>

</body>
</html>