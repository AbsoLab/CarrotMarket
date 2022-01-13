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
		<td><%=dto.getId() %></td>
	</tr>
	<tr>
		<th>PW</th>
		<td>
			<input type="password" id ="pwcheck">
				
		</td>
	</tr>
		
	<tr>
		<th>이름</th>
		<td><%=dto.getName() %></td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td><%=dto.getBirtdate() %></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>
			<input type="hidden" id="email" name="email" value="">
			<input type="text" id="email_id"  value="<%=dto.getEmail().split("@")[0] %>">
			@
			<input type="text" id="email_domain"  value="<%=dto.getEmail().split("@")[1] %>">
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
			<input id="phone2" type="text" size="6" value="<%=dto.getPhone().split("-")[1]%>">
			-
			<input id="phone3" type="text" size="6" value="<%=dto.getPhone().split("-")[2]%>">
		</td>
	</tr>
	<tr>
		<th>지역</th>
		<td>
			<input type="hidden" name="location" id="location">
			<select name="sido1" id="sido1"></select>
			<select name="gugun1" id="gugun1"></select>
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
$(document).ready(function() {
	
	$("#phon1").val("<%=dto.getPhone().split("-")[0]%>").prop("selected", true);
	
	$("#sido1").val("<%=dto.getLocation().split("/")[0]%>").prop("selected", true);
	
	$("#gugun1").val("<%=dto.getLocation().split("/")[1]%>").prop("selected", true);

	
});

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
$('document').ready(function() {
	 var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
	  var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
	   var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
	   var area3 = ["대덕구","동구","서구","유성구","중구"];
	   var area4 = ["광산구","남구","동구",     "북구","서구"];
	   var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
	   var area6 = ["남구","동구","북구","중구","울주군"];
	   var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
	   var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
	   var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
	   var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
	   var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
	   var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
	   var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
	   var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
	   var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
	   var area16 = ["서귀포시","제주시","남제주군","북제주군"];

	 

	 // 시/도 선택 박스 초기화

	 $("select[name^=sido]").each(function() {
	  $selsido = $(this);
	  $.each(eval(area0), function() {
	   $selsido.append("<option value='"+this+"'>"+this+"</option>");
	  });
	  $selsido.next().append("<option value=''>구/군 선택</option>");
	 });

	 

	 // 시/도 선택시 구/군 설정

	 $("select[name^=sido]").change(function() {
	  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
	  var $gugun = $(this).next(); // 선택영역 군구 객체
	  $("option",$gugun).remove(); // 구군 초기화

	  if(area == "area0")
	   $gugun.append("<option value=''>구/군 선택</option>");
	  else {
	   $.each(eval(area), function() {
	    $gugun.append("<option value='"+this+"'>"+this+"</option>");
	   });
	  }
	 });


	});

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
	
	else if($("#pwcheck").val()=='<%=dto.getPw()%>'){
		let email = $("#email_id").val() +'@' + $("#email_domain").val();
		let phone = $("#phone1").val() + '-' + $("#phone2").val() + '-' + $("#phone3").val();
		let location = $("#sido1").val() +'/'+ $("#gugun1").val()
		$("#email").val(email);
		$("#phone").val(phone);
		$("#location").val(location);
		
		$("#frm").submit();
	}
	
}


</script>
</body>
</html>