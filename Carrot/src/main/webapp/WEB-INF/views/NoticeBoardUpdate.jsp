<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mul.camp.a.dto.ContentDto"%>
<!DOCTYPE html>
<%
	ContentDto dto = (ContentDto)request.getAttribute("content");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<form id="frm" action="NoticeBoardUpdateAf.do" method="post">
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
			<button type="button" onclick="update()">수정</button>
			</td>
		</tr>
	</table>
	</div>
	</form>
<script type="text/javascript">
function update(){
	if($("#title").val().trim() == ''){
		alert('수정할 제목을 입력');
	}
	else if ($("#content").val().trim() == ''){
		alert('수정할 내용을 입력');
	}
	else{
		$("#frm").submit();
	}
}
</script>
</head>
<body>

</body>
</html>