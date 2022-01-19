<%@page import="mul.camp.a.dto.ContentDto"%>
<%@page import="mul.camp.a.dto.ReplyDto"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	// session에서 사용자 정보를 산출
	UserDto user = (UserDto)request.getSession().getAttribute("login");
    ReplyDto rdto = (ReplyDto)request.getAttribute("replydto");
    ContentDto cdto = (ContentDto)request.getAttribute("sellBoard");
	%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글의 답글작성 페이지</title>
</head>
<body>

<div align="center">


<form action="sellreplyanswerAf.do?" method="POST">
	<input id="cid" type="hidden" name="cid" value="<%=cdto.getCid()%>">
	<input id="uid" type="hidden" name="uid" value="<%=user.getUid()%>">	
	<input id="ref" type="hidden" name="ref" value="<%=rdto.getRef()%>">
	<input id="step" type="hidden" name="step" value="<%=rdto.getStep()%>">
	<input id="depth" type="hidden" name="depth" value="<%=rdto.getDepth()%>">

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
				<input type="submit" value="답글작성">
			</td>
		</tr>
	</table>

</form>


</div>

</body>
</html>