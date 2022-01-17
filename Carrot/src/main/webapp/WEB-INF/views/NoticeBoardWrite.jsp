<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// session에서 사용자 정보를 산출
UserDto User = (UserDto)request.getSession().getAttribute("login");
%>    
   
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<head>
<meta charset="UTF-8">
<title>당근마켓 공지사항</title>
</head>
<body>

<h1>글추가</h1>

<div align="center">

<form id ="frm" action="NoticeBoardWriteAf.do" method="post">
<input type="hidden" name = "uid" value="1"> <!-- 수정필요 -->
<input type="hidden" name = "bid" value="1">
<table border="1" style="width: 1000px">
<tr>
	<th>아이디</th>
	<td>
		<input type="text" name="id" size="70px" value="<%= User.getId() %>" readonly="readonly">
	</td>	
</tr>
<tr>
	<th>제목</th>
	<td>
		<input type="text" name="title" id="title" size="70px">
	</td>
</tr>
<tr>
	<th>내용</th>
	<td>
		<textarea rows="20" cols="80" name="content" id="content"></textarea>
	</td>
</tr>
<tr>
	<td colspan="2">
		<button type="button" onclick="wirte()">글쓰기</button>
	</td>
</tr>
</table>
</form>
</div>
<script type="text/javascript">
function wirte(){
	if ($("#title").val() == ''){
		alert('제목을 입력해주세요');
	}
	else if ($("#content").val() == ''){
		alert('내용을 입력해주세요');
	}
	else{
		$("#frm").submit();
	}
}
 </script>

</body>
</html>






