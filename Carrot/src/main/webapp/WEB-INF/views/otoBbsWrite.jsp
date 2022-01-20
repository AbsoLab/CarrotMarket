<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserDto user = (UserDto)request.getAttribute("userInfo");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의사항</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="./css/buy.css" media="screen">
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
textarea {
overflow-y:hidden; 
}
</style>
<body>
<div class="container">
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
                            href="buyBoard.do?bid=2" style="padding: 12px 0px;">구매게시판</a>
                    </li>
                    <li class="u-nav-item">
                        <a class="u-border-3 u-border-hover-custom-color-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-button-style u-nav-link u-text-active-black u-text-black u-text-hover-custom-color-2"
                            href="sellBoard.do?bid=3" style="padding: 12px 0px;">판매게시판</a>
                    </li>                   
                    <li class="u-nav-item">
                        <a class="u-border-3 u-border-hover-custom-color-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-button-style u-nav-link u-text-active-black u-text-black u-text-hover-custom-color-2"
                            href="NoticeBoard.do?bid=1" style="padding: 12px 0px;">공지사항</a>
                    </li>
                    <li class="u-nav-item">
                        <a class="u-border-3 u-border-hover-custom-color-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-button-style u-nav-link u-text-active-black u-text-black u-text-hover-custom-color-2"
                            href="qnaBoard.do?bid=0" style="padding: 12px 0px;">문의사항</a><!-- #contact -->
                    </li>
                    <%
                            if (user != null && user.getUid() == 1) {
                            %>
                           	<li class="u-nav-item">
                                <a class="u-button-style u-nav-link" href="contact" style="padding: 10px 0px;">관리자모드</a>
                            </li>
                            
                            <%
                            }
                            %>
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
            <img src="./images/8.png" data-href="login.do"></span>
    </div>
</header>
	<h1>1:1 문의사항</h1>


	<form action="otoBbsWriteAf.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="bid" value="1">
		<input type="hidden" name="uid" value="1">
		
		<div class="input-group mb-3">
			<span class="input-group-text" id="inputGroup-sizing-default">아이디</span>
			<input type="text" style="background-color:#fff;" class="form-control" name="id" value="<%=user.getId() %>" readonly aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
		</div>
		
		<div class="input-group mb-3">
			<span class="input-group-text"  id="inputGroup-sizing-default">제목</span>
			<input type="text" class="form-control" name="title" value="" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
		</div>
		
		<div class="input-group">
			<span class="input-group-text">문의 내용</span>
			<textarea class="form-control" name="content"rows="15" aria-label="With textarea"></textarea>
		</div>
		<div class="mb-3" style="margin-top:15px;">
			<input class="form-control" type="file" name="uploadFile" id="formFile">
		</div>
		<input type="submit" class="btn btn-secondary float-right" class="btn btn-secondary float-right" value="글쓰기">
		
		
	</form>

</div>
<script type="text/javascript">
$(".custom-input").on("change", function() {
	let fileName = $(this).val().split("\\").pop();
	$(this).siblings(".custom-input").addClass("selected").html(fileName);
});	// 이름을 바꿔서 넘겨줌.

$(document).ready(function() {
	  $('textarea').on( 'keyup', function (e){
	    $(this).css('height', 'auto');
	    $(this).height(this.scrollHeight);
	  });
	  $('textarea').keyup();
});

</script>

</body>
</html>