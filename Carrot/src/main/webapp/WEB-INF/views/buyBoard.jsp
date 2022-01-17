<%@page import="mul.camp.a.dto.ContentDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	List<ContentDto> clist = (List<ContentDto>)request.getAttribute("boardlist");
	int bid = (Integer)request.getAttribute("bid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매 게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div align="center">
<h1>구매 게시판</h1>
<br> <br>
<table class="table table-hover" style="width: 1000px">
<!-- <col width="30"><col width="200"><col width="80"> -->
<thead>
<tr>
	<th>번호</th><th>제목</th><th>작성자</th>
</tr>
</thead>

<tbody>

<%
if (clist == null || clist.size() == 0){
	%>	
	<tr>
		<td colspan="3">작성된 글이 없습니다.</td> 
	</tr>
	<%
}else{
	for(int i =0; i < clist.size(); i++){
		ContentDto content = clist.get(i);
	
	%>
	 <tr>
	 	<th><%=i+1 %></th>
	 	<td>
	 		<a href="boardDetail.do?cid=<%=content.getCid()%>"> <!--상세글로 가기위해 cid 필요-->
	 		<%=content.getTitle()%>
	 		</a>
	 	</td>
	 	<td align="center"><%=content.getUid()%></td>
	 </tr>
<% 	
	}
}
%>
</tbody>

</table>
</div>
<br>
<div align="center">
	<a href="boardWrite.do?bid=<%=bid%>">글쓰기</a>
</div>
</body>
</html>