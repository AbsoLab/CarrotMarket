<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	UserDto user = (UserDto)request.getAttribute("dto");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 | 당근나라</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
	body{
	font-family: Helvetica, 		   
		'맑은 고딕', 'malgun gothic', 		   
		'Apple SD Gothic Neo', 'Apple SD 산돌고딕 Neo',  		   
		'Microsoft NeoGothic',  		   
		'Droid sans', sans-serif; 
	}
	
	form div{
		width: 600px;
		height: 70px;
	}
	.center{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
	}

	button{
		margin: 10px;
	}
	label, h3{
		color: orange;
	}
	
</style>
</head>
<body >

<div  class="center">
<h3 align="center" >당근 나라 회원 정보수정</h3>
	<form class="form-horizontal" id="frm" action="updateUserInfo.do" method="post">
		
		<div class="form-group">
		
				 <label for="id" class="col-sm-2 control-label">아이디</label>
					<input type="hidden" name = "uid" value="<%=user.getUid()%>">
					<span  class="form-control"><%=user.getId() %></span>
				</div>
			

			<div class="form-group" >
				<label for="pwcheck" class="col-sm-2 control-label" style="width: 150px" >PW 확인</label>
				<input  class="form-control" type="password" id = "pwcheck">
				
			</div>
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">이름</label>
				<span  class="form-control"><%=user.getName()%></span>
			</div>
			<div class="form-group">
				<label for="birth" class="col-sm-2 control-label">생년월일</label>
				<span  class="form-control"><%=user.getBirthdate() %></span>
			</div>
			<div class="form-group">
				<label for="birth" class="col-sm-2 control-label">이메일</label>
				
				<input type="hidden" id ="email" name="email">
					<div  class="form-control">
				<input  type="text" id = "mail_id" value="<%=user.getEmail().split("@")[0]%>">
				@
				<input  type="text" id = "mail_domain" disabled value="<%=user.getEmail().split("@")[1]%>">
				<select id = "domain">
					<option value="1">직접입력</option> 
					<option value="naver.com" selected>naver.com</option>
					<option value="daum.net">daum.net</option>  
					<option value="hanmail.net">hanmail.net</option> 
					<option value="hotmail.com">hotmail.com</option> 
					<option value="nate.com">nate.com</option> 
					<option value="yahoo.co.kr">yahoo.co.kr</option> 
					<option value="empas.com">empas.com</option> 
					<option value="dreamwiz.com">dreamwiz.com</option> 
					<option value="freechal.com">freechal.com</option> 
					<option value="lycos.co.kr">lycos.co.kr</option> 
					<option value="korea.com">korea.com</option> 
					<option value="gmail.com">gmail.com</option> 
					<option value="hanmir.com">hanmir.com</option> 
					<option value="paran.com">paran.com</option>
				</select>
					</div>
				</div>
			<div class="form-group">
				<label for="phone" class="col-sm-2 control-label">핸드폰</label>
					<input type="hidden" name ="phone" id="phone">
					<div  class="form-control">
						<select id= phone1>
							<option selected="selected" value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>
						-
						<input type="text" id ="phone2" maxlength="4" size="4" value="<%=user.getPhone().split("-")[1]%>">
						-
						<input type="text" id ="phone3" maxlength="4" size="4" value="<%=user.getPhone().split("-")[2]%>">
					</div>
			</div>
			<div class="form-group">
			<label for="location" class="col-sm-2 control-label">주소</label>
				<input type="hidden" id="location" name="location">
					<div class="form-control">
						<select id="local1">
							<option value="서울특별시">서울특별시</option>
							<option value="인천광역시">인천광역시</option>
							<option value="대전광역시">대전광역시</option>
							<option value="광주광역시">광주광역시</option>
							<option value="대구광역시">대구광역시</option>
							<option value="울산광역시">울산광역시</option>
							<option value="부산광역시">부산광역시</option>
							<option value="경기도">경기도</option>
							<option value="강원도">강원도</option>
							<option value="충청북도">충청북도</option>
							<option value="충청남도">충청남도</option>
							<option value="전라북도">전라북도</option>
							<option value="전라남도">전라남도</option>
							<option value="경상북도">경상북도</option>
							<option value="경상남도">경상남도</option>
							<option value="제주도">제주도</option>
						</select>
						<input type="text" id="local2" placeholder="군/구를 작성해주세요" value="<%=user.getLocation().split("/")[1]%>">
					</div>
				</div>
			<div class="form-group" align="center">
				
				<button type="button" class="btn btn-warning btn-lg" style="background-color: orange; color: white;" onclick="userUpdate()">회원정보 수정</button>
				<button type="button" class="btn btn-warning btn-lg" style="background-color: orange; color: white;" onclick="userDelete()">회원탈퇴</button>
				
			</div>
	</form>
	</div>
	<script type="text/javascript">
	//이메일 입력방식 선택
	$("#domain").change(function(){
		$("#domain option:selected").each(function(){
			if($(this).val()=='1'){ //직접입력일 경우
				$("#mail_domain").val(''); // 값 초기화
				$("#mail_domain").attr("disabled", false); //활성화
			}else{ //직접입력이 아닐경우
					$("#mail_domain").val($(this).text()); // 선택값 입력
					$("#mail_domain").attr("disabled", true); //비활성화
			}
		});
	});
	// 업데이트 버튼
	function userUpdate(){
		//alert('update'); 확인차
		
		if($("#pwcheck").val() == ''){
			alert('패스워드를 입력해주세요');
		}
		else if($("#phone2").val() == ''){
			alert('번호 앞자리를 입력해주세요');
		}
		else if($("#phone3").val() == ''){
			alert('번호 뒷자리를 입력해주세요');
		}
		else if($("#local2").val()== ''){
			alert('주소를 입력해주세요');
		}
		else if($("#pwcheck").val() == '<%=user.getPw()%>'){
			let email = $("#mail_id").val() + '@' + $("#mail_domain").val();
			let phone = $("#phone1 option:selected").val() + '-' +$("#phone2").val()+ '-' +$("#phone3").val();
			let location = $("#local1 option:selected").val() + '/' + $("#local2").val();
			$("#email").val(email);
			$("#phone").val(phone);
			$("#location").val(location);
			$("#frm").submit();
			
		}
		else{
			alert('비밀번호를 다시입력해주세요');
			$("#pwcheck").val('');
		}
	}
	//삭제버튼
	function userDelete(){
		if ($("#pwcheck").val() == '<%=user.getPw()%>'){
		let result = confirm('정말 회원을 탈퇴 하시겠습니까?');
			if(result == true){
			location.href = "deleteAccount.do";
			}
		}
		else if($("#pwcheck").val()==''){
			alert('비밀번호를 입력해주세요')
		}
		else{
			alert('비밀번호를 다시입력하세요');
		}
	} 
	
	$(document).ready(function(){
		$("#phone1").val("<%=user.getPhone().split("-")[0]%>").prop("selected", true);
		
		$("#local1").val("<%=user.getLocation().split("/")[0]%>").prop("selected", true);
		
		$("#domain").val("<%=user.getEmail().split("@")[1]%>").prop("selected", true);

		
	})
		
	</script>

</body>
</html>