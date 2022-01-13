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

	<h3>위로부터 밑으로(flex-column)</h3>
	<div class="accordion accordion-flush" id="accordionFlushExample">
		<div class="accordion-item">
			<h2 class="accordion-header" id="flush-headingOne">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
			Accordion Item #1
			</button>
			</h2>
			<div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
			<div class="accordion-body"></div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="flush-headingTwo">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
			Accordion Item #2
			</button>
			</h2>
			<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
			<div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="flush-headingThree">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
			Accordion Item #3
			</button>
			</h2>
			<div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
			<div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
			</div>
		</div>
	</div>
</div>


</body>
</html>