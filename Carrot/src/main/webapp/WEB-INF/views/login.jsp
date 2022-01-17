<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.center{
	margin: auto;
	width: 60%;
	border: 3px solid #0000ff;
	padding: 10px;	 
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>

</head>
<body>

<h2>login page</h2>

<div class="center">

<form id="frm" action="loginAf.do" method="post">

<table border="1">
<tr>
	<th>아이디</th>
	<td>
		<input type="text" id="id" name="id" size="20"><br>
		<input type="checkbox" id="chk_save_id">아이디 저장
	</td>
</tr>
<tr>
	<th>패스워드</th>
	<td>
		<input type="password" name="pw" id="pw" size="20">
	</td>
</tr>
<tr>
	<td colspan="2">
		<!-- <input type="submit" value="로그인"> -->
		<button type="button" onclick="login()">로그인</button>
		<a href="regi.do">회원가입</a>
	</td>
</tr>

</table>
</form>
</div>

<script type="text/javascript">
function login() {
	
	if($("#id").val().trim() == ""){
		
	}else if($("#pw").val().trim() == ""){
		
	}else{ 
		alert('submit');
		$("#frm").submit();
	}
}



/*
	web 저장공간
		session : web server의 저장공간.	java		사용자정보 -> object
		cookie : web client의 저장공간.	JavaScript	id, pw, 방문회수 -> String
*/

let user_id = $.cookie("user_id");	// cookie에서 데이터를 산출	= aaa, bbb
									// model.addattribute("list", list)
if(user_id != null){	// cookie에 저장된 값이 있음
	$("#id").val( user_id );
//	$("#chk_save_id").attr("checked", "checked");
	$("#chk_save_id").prop("checked", true);
}

$("#chk_save_id").click(function () {
//	alert("click");

	if( $("#chk_save_id").is(":checked") ){	// 첵크되었을 경우
	//	alert("첵크");		
		if($("#id").val().trim() == ""){	//  java java
		//	alert("빈문자");
			alert("id를 입력해 주십시오");
			$("#chk_save_id").prop("checked", false);
			$("#id").val("");
		}else{
			// 쿠키에 저장
			$.cookie("user_id", $("#id").val().trim(), { expires:7, path:'./' });
		}
	}
	else{
	//	alert("첵크무효!");
		$.removeCookie("user_id", { path:'./' });
	}

});


</script>




</body>
</html>