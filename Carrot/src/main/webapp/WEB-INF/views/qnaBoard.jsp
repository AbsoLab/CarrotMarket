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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
dt, #home {
	cursor: pointer;
}

</style>
</head>
<body>
<h1 id="home">고객센터</h1>

<!-- FAQ 검색 -->
<div align="center">
	<input type="text" id="search" value="">
	<button type="button" onclick="searchQna()">검색</button>
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
		    <div class="col"><a href="qnaBoard.do?bid=<%=list.getBid()%>"><%=list.getName() %></a></div>
			<%} %>
			
	  	</div>
	</div>
	
	<!-- FAQ 내용 -->
	<h3>자주 찾는 질문</h3>
	<div>
		<table>
		<%for(int i=0; i < cont.size(); i++) { 
			ContentDto conList = cont.get(i);
		%>
			
		<div>
			<dt><%=conList.getTitle() %></dt>
			<textarea rows="15" cols="100" readonly="readonly"><%=conList.getContent() %></textarea>
		</div>
		<%} %>
		</table>
	</div>
</div>

<script type="text/javascript">

// FAQ 내용 접었다 펴기
$(document).ready(function() {
	$("textarea").hide();
	$("dt").click(function() {
		if($(this).next().css("display")=="none") {	/* this는 dt를 의미. next는 다음태그인 dt가 css display가 none 일때와 같을때를 의미. */
			$(this).next().slideDown("fast");
		} else {
			$(this).next().slideUp("fast");
		}
	});
});

// 첫 화면으로 이동
$("#home").click(function() {
	location.href="qnaBoard.do?bid=0";
})

// FAQ 검색
function searchQna() {
	let search = document.getElementById("search").value;
	location.href= "qnaBoard.do?search="+search + "&bid=1";
}

</script>

</body>
</html>