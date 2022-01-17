<%@page import="java.text.SimpleDateFormat"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserDto user = (UserDto)request.getAttribute("upUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="container">
<h1>회원 정보 수정</h1>
	<form action="admUpdateAf.do" method="get">	
		<table>
			<tr>
				<th>회원번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>폰번호</th>
				<th>지역</th>
			</tr>
			
			<tr>
				<td><input type="text" name="uid" value="<%=user.getUid()%>"></td>
				<td><input type="text" name="id" value="<%=user.getId()%>"></td>
				<td><input type="text" name="name" value="<%=user.getName()%>"></td>
				<td><input type="date" name="birthdate" value="<%=user.getBirthdate()%>"></td>
				<td><input type="text" name="email" value="<%=user.getEmail()%>"></td>
				<td><input type="text" name="phone" value="<%=user.getPhone()%>"></td>
				<td><input type="text" name="location" value="<%=user.getLocation()%>"></td>
			</tr>
			<tr>
				<th><input type="submit" value="수정하기"><th>
			</tr>
		</table>
	</form>
<script type="text/javascript">

</script>

</body>
</html>