<%@page import="mul.camp.a.dto.UserDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<UserDto> total = (List<UserDto>)request.getAttribute("totalUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 전용 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="container">
	<h1>관리자 전용 페이지</h1>
	<div class="row">
		<ul class="col-2">
			<li>회원 관리</li>
			<li>관리 목록</li>
			<li>관리 목록</li>
			<li>관리 목록</li>
		</ul>
		
		<div class="col-10">
			<h3>회원관리</h3>
			<hr>
			<table>
				<tr>
					<th>통합검색</th>
					<td>
						<input type="text" id="total" value="" placeholder="이름,아이디,지역 등">
					</td>
					
				</tr>
			</table>
			<button type="button" onclick="admSearch()">검색</button>
			<h3>회원리스트</h3>
			<table>
				<tr>
					<th>
						<input type="checkbox" id="chkbox">
					</th>
					<th>회원번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>생년월일</th>
					<th>이메일</th>
					<th>폰번호</th>
					<th>지역</th>
				</tr>
				<% if(total == null) {
					
				} else {%>
					<% for(int i=0; i < total.size(); i++) {
							UserDto tUser = total.get(i);
					%>
						
						<tr>
							<th>
								<input type="checkbox" id="chkbox" name="chkUser" value="<%=tUser.getUid()%>">
							</th>
							<td><%=tUser.getUid()%></td>
							<td><%=tUser.getId()%></td>
							<td><%=tUser.getName()%></td>
							<td><%=tUser.getBirthdate()%></td>
							<td><%=tUser.getEmail()%></td>
							<td><%=tUser.getPhone()%></td>
							<td><%=tUser.getLocation()%></td>
						</tr>
						
					<% } 
				}		%>
			</table>
			<button type="button" onclick="selDel()">선택삭제</button>
			<button type="button" onclick="selUpd()">선택수정</button>
		</div>
	</div>

<script type="text/javascript">
function admSearch() {
	let total = document.getElementById("total").value;
	
		location.href= "admSearch.do?total="+ total;
	
};

function selDel() {
	var arrDel = new Array();
	
	$("input[name='chkUser']:checked").each(function() {
		arrDel.push(this.value);
	});
	
	$.ajax({
		url:"admDel.do",
		type:"post",
		data: { param: arr},
		success: function(rep) {
			alert('rep');
			if(rep == "Y") {
				alert('선택한 회원 정보가 삭제되었습니다.');
			}else {
				alert('회원 정보가 일치하지 않습니다.');
			}
		},
		error: function() {
			alert('error');
		}
	});
};

function selUpd() {
	var arrUpd = new Array();
	if($("input[name='chkUser']:checked").length > 1) {
		alert("수정은 1개만 가능합니다.");
	} else if ($("input[name='chkUser']:checked").length == 1) {
		let uid = 0;
		$("input[name='chkUser']:checked").each(function () {
			uid = this.value;
		});
		location.href= "admUpdate.do?uid="+ uid;
		
	} else if ($("input[name='chkUser']:checked").length == 0) {
		alert('수정할 회원을 선택해주세요.');
	}
	
	
	/* $.ajax({
		url:
	}) */
};

//나중에하기.


</script>
</body>
</html>