<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
//uidrk ,session에서 사용자 정보를 산출 
int bid = (Integer)request.getAttribute("bid");
//UserDto user = (UserDto)request.getSession().getAttribute("login");
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
<style type="text/css">
	form div{
		width: 700px;
		
	}
	.center{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
</style>
</head>
<body>
<div class=center>
<h3>글쓰기</h3>
<form id ="frm" action="boardWriteAf.do" method="post">
  <div class="form-group">
  	<input type="hidden" name = "uid" value="1">
  	<input type="hidden" name = "bid" value="<%=bid%>">
    <label for="title">제목</label>
    <input type="text" name = "title" class="form-control" id="title" placeholder="제목을 입력하세요">
  </div>
  <div class="form-group">
    <label for="content">내용</label>
    <textarea rows= "20" name = "content" class="form-control" id="content" placeholder="내용을 입력하세요"></textarea>
  </div>
  <button type="button" class="btn btn-warning btn-lg" onclick="wirte()">글쓰기</button>

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