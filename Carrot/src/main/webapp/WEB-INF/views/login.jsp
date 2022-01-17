<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>

<style type="text/css">

#mainLogo{
	display: flex;
	justify-content:center;
	margin-top : 100px;
	/* border: 1px solid black; */
}
#loginBox{
	display: flex;
	justify-content:center;
	margin-top : 20px;
	/* border: 1px solid black; */
}
#loginBoxLine{
	border: 1px solid orange;
	border-radius: 10px;
	padding: 20px
}
#loginBtn{
	text-align: center;
	background-color: orange;
}
.textBox{
	border:none;
	font-size: 25px;
	height: 35px;
	padding: 10px;
}
.textBorder{
	border: 1px solid orange;
	border-radius: 10px;
	margin: 10px;
	padding: 5px;
}
.display{
	display: flex;
	justify-content: space-between;
	padding: 0px 10px;
}
img{
	width: 247px;
	height: 178px;
}
input:focus {outline:none;}
a { text-decoration:none;} 
/* div{
border: 1px solid black;
} */

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>

</head>
<body>

<!-- 메인로고 이미지파일 삽입 -->
<div id="mainLogo">
	<div>
 		<img src="resources/image/mainLogo.png">
 	</div>
</div>

<!-- 로그인 정보입력 박스 -->
<div id="loginBox">
	<div id="loginBoxLine">
		<form id="frm" action="loginAf.do" method="post">
			<div class="textBorder">
				<input type="text" id="id" name="id" size="25" placeholder="아이디" class="textBox">
			</div>
			<div class="textBorder">
				<input type="password" id="pw" name="pw" size="25" placeholder="비밀번호" class="textBox">
			</div>
			<div class="textBorder" style="background-color: orange">
				<!-- <button type="button" onclick="login()">로그인</button> -->
				<input id="loginBtn" type="text" readonly="readonly" size="25" placeholder="로그인" onclick="login()" class="textBox" style="cursor:pointer;">
			</div>
			
			<div class="display">
				<div>
					<input type="checkbox" id="chk_save_id"> 아이디 저장
				</div>
				<div>
					<a href="regi.do" style="color: gray">회원가입</a>
				</div>
			</div>
				
		</form>
	</div>
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