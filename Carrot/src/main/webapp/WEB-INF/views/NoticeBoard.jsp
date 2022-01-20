<%@page import="java.util.List"%>
<%@page import="mul.camp.a.dto.ContentDto"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<% List<ContentDto>NoticeBoardList=(List<ContentDto>)request.getAttribute("boardlist"); %>

<%
int bid = (Integer)request.getAttribute("bid");

UserDto User = (UserDto)request.getSession().getAttribute("login");
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

<h1>공지사항</h1>

<div align="center">

<hr>
<select id="choice">
	<option value="title">제목</option>
	<option value="content">내용</option>
	<option value="writer">작성자</option>
</select>

<input type="text" id="search" value="">

<button type="button" onclick="searchBbs()">검색</button>

<br><hr><br>  

<!--   attribute  property   -->
<table class="table table-hover" style="width: 1000px">
<!-- <col width="30"><col width="200"><col width="80"> -->

<thead>
<tr>
	<th>번호</th><th>제목</th><th>정보</th><th>작성자</th>
</tr>
</thead>

<tbody>
<%
	if(NoticeBoardList == null || NoticeBoardList.size() == 0){
		%>
			<tr>
				<td colspan="3">작성된 글이 없습니다</td> 
			</tr>
		<%
	}else{

		for(int i = 0;i < NoticeBoardList.size(); i++){
			ContentDto Content = NoticeBoardList.get(i);
		%>
			<tr>	
				<th><%=i+1 %></th>
				<td>
					
					<a href="NoticeBoardDetail.do?cid=<%=Content.getCid() %>">
						<%=Content.getTitle() %>
					</a>
				</td>
				<td align="center"><%=Content.getUid()%></td>

			</tr>
		<%
		}
	}
%>
</tbody>
</table>
</div>
<br>
<%if(User != null && User.getId().equals("admin")){%>
	<div align="center">
		<a href="NoticeBoardWrite.do">글쓰기</a>
<%}else{
	
}%>
</div>

</body>
</html>





