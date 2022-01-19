<%@page import="mul.camp.a.dto.ContentDto"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// session에서 사용자 정보를 산출
 UserDto user = (UserDto)request.getSession().getAttribute("login");
 ContentDto cdto = (ContentDto)request.getAttribute("sellBoard");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글작성페이지</title>
</head>
<body>

<h1>댓글 작성</h1>

<div align="center">


<form action="sellanswerAf.do?cid=<%=cdto.getCid()%> + uid=<%=user.getUid()%>" method="GET">

	<input type="hidden" name="cid" value="<%=cdto.getCid()%>">
	<input type="hidden" name="uid" value="<%=user.getUid()%>">

	<table border="1" style="width: 1000px">
		<tr>
			<th>작성자</th>
			<td>
				<input type="text" name="id" size="70px" value="<%=user.getId()%>" readonly="readonly">
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				<textarea rows="5" cols="80" name="content"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="등록">
			</td>
		</tr>
	</table>

</form>


</div>

</body>
</html>