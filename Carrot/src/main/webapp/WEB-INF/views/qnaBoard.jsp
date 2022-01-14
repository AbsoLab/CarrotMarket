<%@page import="mul.camp.a.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@page import="mul.camp.a.dto.ContentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<BoardDto> qna = (List<BoardDto>)request.getAttribute("qna");
	List<ContentDto> cont = (List<ContentDto>)request.getAttribute("qnaCont");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>

/* FAQ 목록 css */
.d-flex {
  background-color: rgba(255,0,0,.1);
  margin-bottom: 2rem;
}
.d-flex > div {
  background-color: #eee;
  padding: .5em;
  border: 1px solid #ccc;
}



/* 내용에 커서를 올려놓으면 손가락 모양으로 바꾸기. */
dt {
	cursor: pointer;
}

</style>
</head>
<body>
<h1>자주 묻는 질문</h1>

<!-- FAQ 검색 -->
<div align="center">
	<input type="text" id="search" value="">
	<button type="button" onclick="searchQna()"></button>
</div>

<!-- FAQ -->
<div class="container">
	<h3>좌측으로부터 우측(flex-row)</h3>
	
	<!-- FAQ 목록  -->
	<div class="container">
	  	<div class="row row-cols-3 d-flex flex-row">
		   	<%for (int i=0; i < qna.size(); i++) { 
		   		BoardDto list = qna.get(i);
		   	%>
		    <div id="qnaList<%=i%>" class="col"><%=list.getName() %></div>
			<%} %>
			
	  	</div>
	</div>
	
	<!-- FAQ 내용 -->
	<h3>위로부터 밑으로(flex-column)</h3>
	<div>
		<%for(int i=0; i < cont.size(); i++) { 
			ContentDto conList = cont.get(i);
		%>
			
		<div>
			<dt><%=conList.getTitle() %></dt>
			<dd><%=conList.getContent() %></dd>
		</div>
		<%} %>
	</div>
</div>

<script type="text/javascript">

/* FAQ 내용 접었다 펴기 */
$(document).ready(function() {
	$("dd").hide();
	$("dt").click(function() {
		if($(this).next().css("display")=="none") {	/* this는 dt를 의미. next는 다음태그인 dt가 css display가 none 일때와 같을때를 의미. */
			$(this).next().slideDown("fast");
		} else {
			$(this).next().slideUp("fast");
		}
	});
});
<%for (int i=0; i < qna.size(); i++) { 
		BoardDto list = qna.get(i);
%>
$("#qnaList<%=i%>").click(function() {
	
});
<%}%>
</script>

</body>
</html>