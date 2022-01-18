<%@page import="mul.camp.a.dto.ReplyDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ReplyDto dto = (ReplyDto)request.getAttribute("reply");
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
<form id="frm" action="buyApdateReplyAf.do" method="post">
<input type="hidden" name="cid" value="<%=dto.getCid() %>">
<input type="hidden" name="rid" value="<%=dto.getRid() %>">
	<div align="center">
	<table class="table table-bordered" style="width:1000px" >
	<col width="100px">
		<tr>
			<th>작성자</th>
			<td><%=dto.getUid() %></td>
		</tr>
		<tr>
			<th>작성일</th>
			<td><%=dto.getWritedate() %></td>
		</tr>
	
		<tr>
			<th>내용</th>
			<td><textarea id="content" name="content" rows="15" cols="100"><%=dto.getContent() %></textarea></td>	
		</tr>
		<tr >
			<td colspan="2">
			<button type="button" onclick="update()">수정 완료</button>
			</td>
		</tr>
	</table>
	</div>
	</form>
<script type="text/javascript">
function update(){
	 if ($("#content").val().trim() == ''){
		alert('수정할 댓글을 작성해주세요');
	}
	else{
		$("#frm").submit();
	}
}
</script>
</body>
</html>