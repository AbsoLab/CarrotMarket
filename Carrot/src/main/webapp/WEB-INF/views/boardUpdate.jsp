<%@page import="mul.camp.a.dto.ContentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ContentDto dto = (ContentDto)request.getAttribute("content");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<form id="frm" action="updateboardAf.do" method="post">
<input type="hidden" name="cid" value="<%=dto.getCid() %>">
	<div align="center">
	<table class="table table-bordered" style="width:1000px" >
	<col width="100px">
		<tr>
			<th>작성자</th>
			<td><%=dto.getUid() %></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" id="title" name="title" value ="<%=dto.getTitle() %>"></td>
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
	if($("#title").val().trim() == ''){
		alert('수정할 제목을 작성해주세요');
	}
	else if ($("#content").val().trim() == ''){
		alert('수정할 제목을 작성해주세요');
	}
	else{
		$("#frm").submit();
	}
}
</script>

</body>
</html>