<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// session에서 사용자 정보를 산출
 UserDto user = (UserDto)request.getSession().getAttribute("login");

%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>

<h1>글추가</h1>

<div align="center">


	<form action="sellbbswriteAf.do?bid=3" method="get">
	
		<input type="hidden" name="uid" value="<%=user.getUid()%>">
		<input type="hidden" name="bid" value="3">
		<table border="1" style="width: 1000px">
			<tr>
				<th>작성자</th>
				<td>
					<input type="text" name="id" size="70px" value="<%=user.getId()%>" readonly="readonly">
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="title" size="70px">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="20" cols="80" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="글쓰기">
				</td>
			</tr>
		</table>	
	</form>
</div>

</body>
</html>