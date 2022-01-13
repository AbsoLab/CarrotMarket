<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	UserDto dto = (UserDto)request.getAttribute("dto");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h1>회원 정보</h1>
<form id = "frm" action="updateUserInfo.do" method="post">
<table border="1">
	<tr>
		<th>ID</th>
		<td></td>
	</tr>
	<tr>
		<th>PW</th>
		<td>
			<input type="password" id ="pwcheck">
				
		</td>
	</tr>
		
	<tr>
		<th>이름</th>
		<td>NAME</td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td>BIR</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>
			<input type="hidden" id="email" name="email" value="">
			<input type="text" id="email_id"  value="meek34">
			@
			<input type="text" id="email_domain"  value="">
			<select  id="domain" onchange="setdomain()">
				<option value="1">-직접입력-</option>
			    <option value="naver.com">naver.com</option>
			    <option value="gmail.com">gmail.com</option>
			    <option value="hanmail.net">hanmail.net</option>
			    <option value="hotmail.com">hotmail.com</option>
			    <option value="korea.com">korea.com</option>
			    <option value="nate.com">nate.com</option>
			    <option value="yahoo.com">yahoo.com</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>핸드폰</th>
		<td>
			<input type="hidden" id="phone" name="phone" value ="">
			<select id="phone1">
				<option value="010" selected="selected">010</option>
				<option value="011">011</option>
				<option value="070">070</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			</select>
			-
			<input id="phone2" type="text" size="6" value="">
			-
			<input id="phone3" type="text" size="6" value="">
		</td>
	</tr>
	<tr>
		<th>지역</th>
		<td>
			<input type="hidden" name="location" id="location">
			<select name="sido1" id="sido1">
				<option>서울특별시</option>
				<option>인천광역시</option>
				<option>대전광역시</option>
				<option>광주광역시</option>
				<option>대구광역시</option>
				<option>울산광역시</option>
				<option>부산광역시</option>
				<option>경기도</option>
				<option>강원도</option>
				<option>충청북도</option>
				<option>충청남도</option>
				<option>전라북도</option>
				<option>전라남도</option>
				<option>경상북도</option>
				<option>경상남도</option>
				<option>제주도</option>
			</select>
			
			<input type="text" name="gugun1" id="gugun1">
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<button type="button" onclick="update()">회원정보 수정</button>
		<button type="button" onclick="delate()">회원 탈퇴</button>
		</td>
	</tr>
</table>
</form>
	
<script type="text/javascript">

//도메인 설정
function setdomain(){
	if(document.getElementById("domain").value =='1'){
		document.getElementById("email_domain").readOnly = false;
		document.getElementById("email_domain").value='';
		document.getElementById("email_domain").focus();
	}
	else{
		document.getElementById("email_domain").readOnly = true;
		let domain = document.getElementById("domain").value;
		document.getElementById("email_domain").value = domain;
	}
	
}



	});
// update 버튼
function update(){
	alert('update');
	if($("#email_id").val()==''){
		alert('이메일아이디를 입력해주십시오');
	}
	else if($("#email_domain").val()==''){
		alert('이메일 도메인을 선택해주세요.');
	}
	else if($("#pwcheck").val()==''){
		alert('비밀번호를 입력해주세요');
	}
	else if($("#phone2").val()==''){
		alert('핸드폰 앞자리를 입력해주세요');
	}
	else if($("#phone3").val()==''){
		alert('핸드폰 뒷자리를 입력해주세요');
	}
	else if($("#sido1").val()==''){
		alert('주소를 선택해주세요');
	}
	
	else if($("#pwcheck").val()=='123'){
		let email = $("#email_id").val() +'@' + $("#email_domain").val();
		let phone = $("#phone1").val() + '-' + $("#phone2").val() + '-' + $("#phone3").val();
		let location = $("#sido1").val() +'/'+ $("#gugun1").val()
		$("#email").val(email);
		$("#phone").val(phone);
		$("#location").val(location);
		
		$("#frm").submit();
	}
	
}

//페이지 로딩시 세팅
$(document).ready(function() {
	$("#phone1").val("017").prop("selected", true);
	
	$("#sido1").val("서울특별시").onclick;
	
	
	
});
</script>
</body>
</html>