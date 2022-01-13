<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

<style>

.d-flex {
  background-color: rgba(255,0,0,.1);
  margin-bottom: 2rem;
}
.d-flex > div {
  background-color: #eee;
  padding: .5em;
  border: 1px solid #ccc;
}

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
		    <div class="col">Column</div>
		    <div class="col">Column</div>
		    <div class="col">Column</div>
		    <div class="col">Column</div>
		    <div class="col">Column</div>
		    <div class="col">Column</div>
		    <div class="col">Column</div>
		    <div class="col">Column</div>
		    <div class="col">Column</div>
		    <div class="col">Column</div>
	  	</div>
	</div>
	
	<!-- FAQ 내용 -->
	<h3>위로부터 밑으로(flex-column)</h3>
	<div>
		<div>
			<dt>제목</dt>
			<dd>내용</dd>
		</div>
		<div>
			<dt>제목</dt>
			<dd>내용</dd>
		</div>
		<div>
			<dt>제목</dt>
			<dd>내용</dd>
		</div>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function() {
	$("dd").hide();
	$("dt").click(function() {
		if($(this).next().css("display")=="none") {	// this는 dt를 의미. next는 다음태그인 dt가 css display가 none 일때와 같을때를 의미.
			$(this).next().slideDown("fast");
		} else {
			$(this).next().slideUp("fast");
		}
	});
});

</script>

</body>
</html>