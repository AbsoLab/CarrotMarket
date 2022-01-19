<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당근마켓 회원가입</title>

<style type="text/css">

.main{	margin: 0 auto;	max-width: 760px; }
.center{
	width: auto;	padding: 20px;	font-weight: bold;	font-size: 16px; }
.button{ background-color: rgb(255, 112, 45);
	color:white; height: 80px; width: 400px; font-size: 25px; font-weight: bold; margin: 60px auto; display: block; }
input {  height:25px;  font-size:15px; }
option{  width :50px;  height:35px;  font-size:19px; }
select{  width :90px;  height:35px;  font-size:19px; }

</style>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script>

</head>
<body class="main">

<div style="padding-bottom:100px; padding-top:40px; text-align: center; font-weight: bold; font-size: 40px; color: rgb(255, 112, 45);"><img src="img/carrot.png" ><br>회원가입</div>

<div class="center">

<form id="frm" action="regiAf.do" method="post">

<table>

<!-- 아이디 화면 테이블   -->
	<tr><th valign="top" style="padding-left:100px; padding-right:40px; font-weight: bold; font-size: 25px; color: rgb(211, 84, 0);">아이디</th>
	<!-- onchange : text쪽 입력하면 자동으로 함수 호출 -->
	<td><input type="text" name="id" id="id" size="30" onchange='checkid()'><br>
	<p id="idcheck" style="font-size: 12px"></p><br><br></td></tr>	
	
<!-- 비밀번호 화면 테이블   -->	
	<tr><th valign="top" style="padding-left:100px; padding-right:40px; font-weight: bold; font-size: 25px; color: rgb(230, 126, 34); ">비밀번호</th>
	<td><input type="password" name="pw" id="pw" size="30"><br>
		<p id="pwcheck" style="font-size: 12px"></p><br><br></td></tr>
		
		
<!-- 이름 화면 테이블   -->				
	<tr><th valign="top" style="padding-left:100px; padding-right:40px; font-weight: bold; font-size: 25px; color: rgb(211, 84, 0); ">이름</th>
	<td><input type="text" name="name" id="name" size="30"><br>
		<p id="namecheck" style="font-size: 12px"></p><br><br></td></tr>
		
<!-- 생년월일 화면 테이블   -->			
	
     

  
	<tr><th valign="top" style="padding-left:100px; padding-right:40px; font-weight: bold; font-size: 25px; color: rgb(230, 126, 34); ">생년월일</th>

	<td><input type="date" name="birthdate" id="birthdate"><br>
	<!--Year
		<td><input type="hidden" name="birthdate" id="birthdate">  		
	<input type="hidden" name="birthdate" id="birthdate">
		<input type="text" name="yy" id="yy" size="10">&nbsp년 &nbsp&nbsp
	
	Month  
		<select id="mm" class="mm" aria-labe="월"> 
			<option value="">월</option>
		    <option value="01">01</option>
		    <option value="02">02</option>
		    <option value="03">03</option>
		    <option value="04">04</option>
		    <option value="05">05</option>
		    <option value="06">06</option>
		    <option value="07">07</option>
		    <option value="08">08</option>
		    <option value="09">09</option>
		    <option value="10">10</option>
		    <option value="11">11</option>
		    <option value="12">12</option>
	   	</select> &nbsp월&nbsp&nbsp 
	
	<!-- Day   -->  
		<!-- <input type="text" name="dd" id="dd" size="2">&nbsp 일 &nbsp&nbsp -->
		
	<!-- 체크 출력   -->
		<p id="datecheck" style="font-size: 12px"></p><br><br></td></tr>

		
<!-- 전화번호 화면 테이블   -->		
	<tr><th valign="top" style="padding-left:100px; padding-right:40px; font-weight: bold; font-size: 25px; color: rgb(211, 84, 0); ">전화번호</th>
	<td><input type="hidden" name="phone" id="phone">
		<input type="text" name="p1" id="p1" size="10"> - 
		<input type="text" name="p2" id="p2" size="10"> -
		<input type="text" name="p3" id="p3" size="10">
		
		<!-- 체크 출력   -->
		<p id="phonecheck" style="font-size: 12px"></p><br><br></td></tr>

		
<!-- location 화면 테이블   -->		
	<tr><th valign="top" style="padding-left:100px; padding-right:40px; font-weight: bold; font-size: 25px; color: rgb(230, 126, 34);">지역</th>
	
	<td><input type="hidden" name="location" id="location">
        
		<select id="area" aria-labe="선택"> 
			<option value="">선택</option>
		    <option value="서울">서울</option>
		    <option value="인천">인천</option>
		    <option value="경기">경기</option>
		    <option value="대전">대전</option>
		    <option value="충남">충남</option>
		    <option value="충북">충북</option>
		    <option value="세종">세종</option>
		    <option value="광주">광주</option>
		    <option value="전남">전남</option>
		    <option value="전북">전북</option>
		    <option value="대구">대구</option>
		    <option value="경북">경북</option>
		    <option value="부산">부산</option>
		    <option value="울산">울산</option>
		    <option value="경남">경남</option>
		    <option value="강원">강원</option>
		    <option value="제주">제주</option>
		</select>
		<input type="text" name="local" id="local" size="20">
		
		<!-- 체크 출력   -->
		<p id="locationcheck" style="font-size: 12px"></p><br><br><br></td></tr>	
					
					
<!-- 이메일 화면 테이블   -->					
	<tr><th valign="top" style="padding-left:100px; padding-right:40px; font-weight: bold; font-size: 25px; color: rgb(211, 84, 0); ">이메일</th>
	<td><input type="text" name="email" id="email" size="30"><br>
		
		<!-- 체크 출력   -->
		<p id="emailcheck" style="font-size: 12px"></p><br><br></td></tr>			
	
					
</table>
</form>
		<!-- 버튼 account함수 호출 -->
		<button class="button"	type="button" onclick="account()">가입하기</button>
		<input type="hidden" name="uid" id="uid">
</div>




<script type="text/javascript">

	let idchek = false;
	
	//테이블에서 ID값 비교 (ajax)
	function checkid(){
	
		$.ajax({
			url:"idcheck.do",
			type:"post",
			data:{ id:$("#id").val() },
			success:function(msg){	
				if(msg==false){
					$("#idcheck").css("color", "#0000ff");
					$("#idcheck").html("가입 가능한 아이디 입니다");
					idchek=true;
				}
				else{
					$("#idcheck").css("color","#ff0000");
					$("#idcheck").html("이미 아이디가 있습니다");
					idchek=false;
				}
			},
			error:function(msg){
				alert('error');
			}
		});
	}
	
			
	//마지막 저장 체크
	function account() {
		
		// 지역, 전화번호, 날짜 = 따로 입력 받은 부분 합치기
		let arealocal =(($("#area").val())+($("#local").val()));
		let pt = (($("#p1").val())+'-'+($("#p2").val())+'-'+($("#p3").val()));
		
		// 값 넣기
		$("input#phone").val(pt);
		$("input#location").val(arealocal);
		
		// 체크
		let pwcheck = false;
		let namecheck = false;
		let emailcheck = false;
		let datecheck = false;
		let locationcheck = false;
					
			if($("#id").val() == ''){
				$("#idcheck").css("color", "#ff0000");
				$("#idcheck").html("필수 입력 항목");
				idchek=false;
			}else if(idchek==true){
				$("#idchek").html("완료");
			}
			
			if($("#pw").val() == ''){
				$("#pwcheck").css("color", "#ff0000");
				$("#pwcheck").html("필수 입력 항목");
				pwcheck=false;
			}else{
				$("#pwcheck").css("color", "#0000ff");
				$("#pwcheck").html("완료");
				pwcheck=true;
			} 
			
			if($("#name").val() == ''){
				$("#namecheck").css("color", "#ff0000");
				$("#namecheck").html("필수 입력 항목");
				namecheck=false;
			}else{
				$("#namecheck").css("color", "#0000ff");
				$("#namecheck").html("완료");
				namecheck=true;
			}
			
			if($("#birthdate").val()==''){
				$("#datecheck").css("color", "#ff0000");
				$("#datecheck").html("생년월일을 선택해주세요");
				datecheck=false;
			}
			else{
				$("#datecheck").css("color", "#0000ff");
				$("#datecheck").html("완료");
				datecheck=true;
			}
			
			if($("#area").val()==''){
				$("#locationcheck").css("color", "#ff0000");
				$("#locationcheck").html("필수 입력 항목");
				locationcheck=false;
			}
			else{
				$("#locationcheck").css("color", "#0000ff");
				$("#locationcheck").html("완료");
				locationcheck=true;
			}
			
			if(($("#p1").val())==''||($("#p2").val())==''||($("#p3").val())==''){
				$("#phonecheck").css("color", "#ff0000");
				$("#phonecheck").html("필수 입력 항목");
				phonecheck=false;
			}else{
				$("#phonecheck").css("color", "#0000ff");
				$("#phonecheck").html("완료");
				phonecheck=true;
			}
			
			if($("#email").val() == ''){
				$("#emailcheck").css("color", "#ff0000");
				$("#emailcheck").html("필수 입력 항목");
				emailcheck=false;
			}
			else if(checkemail(($("#email").val()))==true){
				$("#emailcheck").html(" ");
				$("#emailcheck").css("color", "#0000ff");
				$("#emailcheck").html("완료");
				emailcheck=true;
			}else if(checkemail(($("#email").val()))==false){
				$("#emailcheck").css("color", "#ff0000");
				$("#emailcheck").html("잘못 된 E-Mail 주소 입니다");
				emailcheck=false;
			}
			
			//체크가 다 True일때 화면 넣기기
			if(idchek==true&&emailcheck==true&&namecheck==true&&pwcheck==true&&datecheck==true&&locationcheck==true&&phonecheck==true){
				alert('회원가입이 완료 되었습니다');
				$("#frm").submit();
			}
	}
	
//이메일형식인지 판별 함수 맞으면 true값 아닐경우 false 값으로 
function checkemail(cEmail) {
		var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		if (filter.test(cEmail)) {
			return true;
		}
		else {
			return false;
		}
}
 </script>

</body>
</html>