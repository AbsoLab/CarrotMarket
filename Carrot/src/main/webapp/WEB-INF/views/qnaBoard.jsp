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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords"
          content="​Thoughtful, collaborative and insightful, ​Creates Unique Design and Construction According to Clients’ Needs, ​Wood Truss Systems, Responsive Pricing​ Table, $ 30, $ 60, Building Company, Read what our customers say">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
<title>질문게시판</title>
<script type="module">
  import { Toast } from 'bootstrap.esm.min.js'

  Array.from(document.querySelectorAll('.toast'))
    .forEach(toastNode => new Toast(toastNode))
</script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="./css/buy.css" media="screen">
    <link rel="stylesheet" href="./css/nicepage.css" media="screen">
    <script class="u-script" type="text/javascript" src="./jquery/jquery.js" ></script>
    <script class="u-script" type="text/javascript" src="./jquery/nicepage.js" ></script>
    <meta name="generator" content="Nicepage 4.2.6, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|PT+Sans:400,400i,700,700i"><link rel="stylesheet" href="./css/buy.css" media="screen">
    <link rel="stylesheet" href="./css/nicepage.css" media="screen">
    <script class="u-script" type="text/javascript" src="./jquery/jquery.js" ></script>
    <script class="u-script" type="text/javascript" src="./jquery/nicepage.js" ></script>
    <meta name="generator" content="Nicepage 4.2.6, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|PT+Sans:400,400i,700,700i">
<%--script 첨부--%>
    <script type="application/ld+json">{
        "@context": "http://schema.org",
        "@type": "Organization",
        "name": "",
        "logo": "images/logo.png",
        "sameAs": [
            "https://facebook.com/name",
            "https://twitter.com/name",
            "https://instagram.com/name"
        ]
    }</script>
    <meta name="theme-color" content="#5090f7">
    <meta name="twitter:site" content="@">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="당근나라">
    <meta name="twitter:description" content="">
    <meta property="og:title" content="당근나라">
    <meta property="og:type" content="당근나라">
<style>

/* FAQ 목록 css */
.basic {
	padding: 10px 0;
}

.slide {
	margin: 10px 0;
}


details {
	border-top-style: solid;
	border-bottom-style: solid;
	border-width: 1px;
	border-color: #ECECEC;
	padding: 10px 0;
}

/* 내용에 커서를 올려놓으면 손가락 모양으로 바꾸기. */
#home {
	cursor: pointer;
}

textarea {
	width:100%; 
	padding:20px 20px 5px; 
	border:0px solid #ddd; 
	background:#fcfcfc; 
	resize:none; 
	overflow-y:hidden; 
	font-family:"malgun gothic";
}

.oto {
	font-color: black;
	font-weight: bold;
	padding: 10px 0px;
	margin: 30px 0px;
}

li {
	cursor: pointer;
}
</style>
</head>
<body>
<%--header 코드--%>
<header class="u-clearfix u-header u-header" id="sec-75b6">
    <div class="u-clearfix u-sheet u-sheet-1">
        <a href="start.do" class="u-image u-logo u-image-1" data-image-width="354"
           data-image-height="255">
            <img src="./images/logo.png" class="u-logo-image u-logo-image-1">
        </a>

        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
            <div class="menu-collapse"
                 style="font-size: 1rem; letter-spacing: 0px; font-weight: 700; text-transform: uppercase;">
                <a class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-border-radius u-custom-borders u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
                   href="#">
                    <svg viewBox="0 0 24 24">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use>
                    </svg>
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <defs>
                            <symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;">
                                <rect y="1" width="16" height="2"></rect>
                                <rect y="7" width="16" height="2"></rect>
                                <rect y="13" width="16" height="2"></rect>
                            </symbol>
                        </defs>
                    </svg>
                </a>
            </div>
            <div class="u-custom-menu u-nav-container">
                <ul class="u-nav u-spacing-30 u-unstyled u-nav-1">
                    <li class="u-nav-item">
                        <a class="u-border-3 u-border-hover-custom-color-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-button-style u-nav-link u-text-active-black u-text-black u-text-hover-custom-color-2"
                            href="#" style="padding: 12px 0px;">구매게시판</a>
                    </li>
                    <li class="u-nav-item">
                        <a class="u-border-3 u-border-hover-custom-color-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-button-style u-nav-link u-text-active-black u-text-black u-text-hover-custom-color-2"
                            href="#" style="padding: 12px 0px;">판매게시판</a>
                    </li>                   
                    <li class="u-nav-item">
                        <a class="u-border-3 u-border-hover-custom-color-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-button-style u-nav-link u-text-active-black u-text-black u-text-hover-custom-color-2"
                            href="#" style="padding: 12px 0px;">공지사항</a>
                    </li>
                    <li class="u-nav-item">
                        <a class="u-border-3 u-border-hover-custom-color-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-button-style u-nav-link u-text-active-black u-text-black u-text-hover-custom-color-2"
                            href="qnaBoard.do?bid=0" style="padding: 12px 0px;">문의사항</a><!-- #contact -->
                    </li>
                </ul>
            </div>
            <div class="u-custom-menu u-nav-container-collapse">
                <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                    <div class="u-inner-container-layout u-sidenav-overflow">
                        <div class="u-menu-close"></div>
                        <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link" href="#"
                                                      style="padding: 10px 0px;">구매게시판</a>
                            </li>
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link" href="#"
                                                      style="padding: 10px 0px;">판매게시판</a>
                            </li>                               
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link" href="#"
                                                      style="padding: 10px 0px;">공지사항</a>
                            </li>
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link" href="contact"
                                                      style="padding: 10px 0px;">문의사항</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
            </div>
        </nav>
            <span class="u-border-2 u-border-black u-file-icon u-icon u-icon-circle u-spacing-5 u-text-black u-icon-1">
            <img src="./images/8.png" data-href="admin.do"></span>
    </div>
</header>

	<!-- FAQ 검색 -->
	<div class="container">
		<h3 class="fs-1" id="home"><b>자주 찾는 질문</b></h3>
		<!-- <div class="input-group input-group-sm mb-3">
			<span class="input-group-text" id="inputGroup-sizing-sm">Small</span>
			<input type="text"  class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
			<button type="button" onclick="searchQna()">검색</button>
		</div> -->
			<div class="input-group mb-3">
				<input style="border-color:#EC652D;" type="text" id="search" list="browser" onkeyup="enterkey()" value="" class="form-control" placeholder="자주 묻는 질문 검색" aria-label="Recipient's username" aria-describedby="button-addon2">
				<button style="border-color:#EC652D;" class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="searchQna()"><i class="bi bi-search"></i></button>
			</div>
			<datalist id="browser">
			<option value="판매 금지 물품">
			<option value="동네 생활 가이드">
			<option value="비매너 평가를 하면 상대방이 알 수 있나요?">
			<option value="당근마켓에서 지켜야 할 매너">
			<option value="동네생활 가이드라인">
			<option value="내가 쓴 게시글과 댓글은 어디서 볼 수 있나요?">
			</datalist>
		
	</div>

<!-- FAQ 목록,내용 -->
	<div class="container">
		
		<!-- FAQ 목록  -->
	
		<ul class="nav nav-tabs">
			   	<%for (int i=0; i < qna.size(); i++) { 
			   		BoardDto list = qna.get(i);
			   	%>
			    <li class="nav-item">
			    <a href="qnaBoard.do?bid=<%=list.getBid()%>" class="nav-link" aria-current="page" style="color: #EC652D;"><b><%=list.getName() %></b></a>
			    </li>
				<%} %>
				<li class="nav-link" aria-current="page" style="color: #EC652D;" onclick="otoQna()"><b>1:1 문의사항</b></li>
		</ul>
				
		<!-- FAQ 내용 -->
			<%for(int i=0; i < cont.size(); i++) { 
				ContentDto conList = cont.get(i);
			%>
			
			<details>
				<summary class="basic"><%=conList.getTitle() %></summary>
				<span class="slide"><textarea cols="148" readonly="readonly"><%=conList.getContent() %></textarea></span>
			</details>
			
			<%-- <div>
				<dt><%=conList.getTitle() %></dt>
				<textarea rows="15" cols="148" readonly="readonly"><%=conList.getContent() %></textarea>
			</div> --%>
			<%} %>
	
</div>



<script type="text/javascript">

// FAQ 내용 접었다 펴기
/*  $(document).ready(function() {
	$("textarea").hide();
	$("dt").click(function() {
		if($(this).next().css("display")=="none") {	/* this는 dt를 의미. next는 다음태그인 dt가 css display가 none 일때와 같을때를 의미. */
		/*	$(this).next().slideDown("fast");
		} else {
			$(this).next().slideUp("fast");
		}
	});
});  */

// 첫 화면으로 이동
$("#home").click(function() {
	location.href="qnaBoard.do?bid=0";
});

/* function resize(obj) {
	obj.style.height='1px';
	obj.style.height=(12+obj.scrollHeight)+'px';
};
  */
$(document).ready(function() {
	  $('textarea').on( 'keyup', function (e){
	    $(this).css('height', 'auto');
	    $(this).height(this.scrollHeight);
	  });
	  $('textarea').keyup();
});

 
// FAQ 검색
function searchQna() {
	let search = document.getElementById("search").value;
	location.href= "qnaBoard.do?search="+search + "&bid=1";
};


function enterkey() {
	if(window.event.keyCode == 13) {
		searchQna();
	};
};

//1:1문의사항
function otoQna() {
	location.href= "otoBbsWrite.do?uid=2"; // 나중에 로그인 정보에서 받은 uid로 수정해야함.
		
};

</script>

</body>
</html>