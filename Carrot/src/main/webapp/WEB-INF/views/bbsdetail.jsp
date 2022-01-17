<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="mul.camp.a.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	BbsDto bbs = (BbsDto)request.getAttribute("bbs"); // 짐풀어
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

<h1>상세글보기</h1>

<div align="center">

<table class="table table-bordered" style="width: 1000px">
<tr>
	<th>작성자</th>
	<td><%=bbs.getId() %></td>
</tr>

<tr>
	<th>제목</th>
	<td><%=bbs.getTitle() %></td>
</tr>

<tr>
	<th>작성일</th>
	<td><%=bbs.getWdate() %></td>
</tr>

<tr>
	<th>조회수</th>
	<td><%=bbs.getReadcount() %></td>
</tr>

<tr>
	<th>정보</th>
	<td><%=bbs.getRef() %>-<%=bbs.getStep() %>-<%=bbs.getDepth() %></td>
</tr>

<tr>
	<th>내용</th>
	<td align="center">
		<textarea rows="15" cols="100" readonly="readonly"><%=bbs.getContent() %></textarea>
	</td>
</tr>
</table>

<%
MemberDto mem = (MemberDto)request.getSession().getAttribute("login");
%>

<button type="button" onclick="answerbbs(<%=bbs.getSeq() %>)">답글</button>

<%
if(mem.getId().equals( bbs.getId() )){
%>
	<button type="button" onclick="updatebbs(<%=bbs.getSeq() %>)">수정</button>
	
	<button type="button" onclick="deletebbs(<%=bbs.getSeq() %>)">삭제</button>
<%
}
%>
</div>

<script type="text/javascript">
function answerbbs( seq ) {
	location.href = "answer.do?seq=" + seq;
}

function updatebbs( seq ) {
	location.href = "updatebbs.do?seq=" + seq;
}
function deletebbs( seq ) {
	location.href = "deletebbs.do?seq=" + seq;
}
</script>
</body>
</html>






