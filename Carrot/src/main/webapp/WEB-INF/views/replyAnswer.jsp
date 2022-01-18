<%@page import="mul.camp.a.dto.UserDto"%>
<%@page import="mul.camp.a.dto.ReplyDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ReplyDto reply = (ReplyDto)request.getAttribute("reply");
	UserDto user = (UserDto)request.getSession().getAttribute("login");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<table class="table table-bordered" style="width:1000px" >
	<col width="100px">
		<tr>
			<th>작성자</th>
			<td><%=reply.getUid() %></td>
		</tr>
		<tr>
			<th>작성일</th>
			<td><%=reply.getWritedate() %></td>
		</tr>
		<tr>
			<th>댓글</th>
			<td><%=reply.getContent() %></td>
		</tr>
		
	</table>
	<h1>답글</h1>
	
	<form action="answerAf.do" method="get">
	<input type="hidden" name ="ref" value="<%=reply.getRef() %>">
	<input type="hidden" name ="step" value="<%=reply.getStep() %>">
	<input type="hidden" name ="depth" value="<%=reply.getDepth() %>">
	<input type="hidden" name="rid" value="<%=reply.getRid() %>"> <!-- rid를 넘겨준다.  -->
	<input type="hidden" name="cid" value="<%=reply.getCid() %>"> <!-- cid 넘겨준다 -->
	
	
	<table class="table table-bordered" style="width: 1000px">
<tr>
	<th>UID</th>
	<td>
		<input type="text" name="uid" size="70px" value="1" readonly="readonly"> <!-- 교체해줘야함 user.getUid() -->
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
		<input type="submit" value="글쓰기" >
	</td>
</tr>

</table>

	
	</form>
	</div>
</body>
</html>