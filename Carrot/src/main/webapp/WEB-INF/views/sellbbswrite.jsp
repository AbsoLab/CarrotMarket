<%@page import="mul.camp.a.dto.ReplyDto"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="mul.camp.a.dto.ContentDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<%
	UserDto user = (UserDto)request.getSession().getAttribute("login");
	%>
<html style="font-size: 16px;">
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquer	y/3.5.1/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords"
          content="​Thoughtful, collaborative and insightful, ​Creates Unique Design and Construction According to Clients’ Needs, ​Wood Truss Systems, Responsive Pricing​ Table, $ 30, $ 60, Building Company, Read what our customers say">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>당근나라</title>
    <link rel="stylesheet" href="./css/buy.css" media="screen">
    <link rel="stylesheet" href="./css/nicepage.css" media="screen">
    <link rel="stylesheet" href="./css/sellbbswrite.css?after">
    <script class="u-script" type="text/javascript" src="./jquery/jquery.js" ></script>
    <script class="u-script" type="text/javascript" src="./jquery/nicepage.js" ></script>
    <meta name="generator" content="Nicepage 4.2.6, nicepage.com">

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
                           href="qnaBoard.do?bid=0" style="padding: 12px 0px;">문의사항</a>
                    </li>
                </ul>
            </div>
            <div class="u-custom-menu u-nav-container-collapse">
                <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
                    <div class="u-inner-container-layout u-sidenav-overflow">
                        <div class="u-menu-close"></div>
                        <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link" href="buyBoard.do?bid=2"
                                   style="padding: 10px 0px;">구매게시판</a>
                            </li>
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link" href="sellBoard.do?bid=3"
                                   style="padding: 10px 0px;">판매게시판</a>
                            </li>
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link" href="NoticeBoard.do?bid=1"
                                   style="padding: 10px 0px;">공지사항</a>
                            </li>
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link" href="qnaBoard.do?bid=0"
                                   style="padding: 10px 0px;">문의사항</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
            </div>
        </nav>
        <span class="u-border-2 u-border-black u-file-icon u-icon u-icon-circle u-spacing-5 u-text-black u-icon-1">
            <img src="./images/8.png" data-href="userInfo.do"></span>
    </div>
</header>


<body class="u-body" data-style="login-template-1" data-posts="" data-global-section-properties="{&quot;code&quot;:&quot;LOGIN&quot;,&quot;colorings&quot;:{&quot;light&quot;:[&quot;clean&quot;,&quot;clean&quot;],&quot;colored&quot;:[&quot;clean&quot;,&quot;clean&quot;,&quot;clean&quot;],&quot;dark&quot;:[&quot;clean&quot;,&quot;clean&quot;,&quot;clean&quot;]},&quot;isPreset&quot;:true}" data-source="fix" data-page-sections-style="[{&quot;name&quot;:&quot;login-form-1&quot;,&quot;margin&quot;:&quot;both&quot;,&quot;repeat&quot;:false}]" data-page-coloring-types="{&quot;light&quot;:[&quot;clean&quot;,&quot;clean&quot;],&quot;colored&quot;:[&quot;clean&quot;,&quot;clean&quot;,&quot;clean&quot;],&quot;dark&quot;:[&quot;clean&quot;,&quot;clean&quot;,&quot;clean&quot;]}" data-page-category="&quot;Login&quot;"><section class="u-align-center u-clearfix u-image u-block-3b75-1" custom-posts-hash="[I,T]" data-section-properties="{&quot;margin&quot;:&quot;none&quot;,&quot;stretch&quot;:true}" data-id="3b75" data-posts-content="[{'images':[[1300,700]],'maps':[],'videos':[],'icons':[],'textWidth':827,'textHeight':456,'id':1,'headingProp':'h2','textProp':'text'}]" data-style="group-control-10" id="carousel_2d9a" data-source="functional_fix" data-image-width="626" data-image-height="351">
  <div class="u-clearfix u-sheet u-block-3b75-2"><!-- 여기부터 공간 -->
	<form id="frm" action="sellbbswriteAf.do?bid=3" method="get">
	
		<input type="hidden" name="uid" value="<%=user.getUid()%>">
		<input type="hidden" name="bid" value="3">
		<div id="whiteOneFrame">
		<div id="mainFrame">
			<h2>게시글작성</h2>					
			<div id="contenttitleFrame">
				<div class="writeinfo">작성자</div>
				<div class="contentinfo"><input type="text" name="id"value="<%=user.getId()%>" readonly="readonly"></div>					
			</div>
					
			<div id="CtitleFrame">
				<div class="writeinfo">제목</div>
				<div class="contentinfo"><input type="text" name="title"></div>
			</div>
					
			<div id="ContentFrame">
				<div class="writeinfo">내용</div>
				<div id="Ccontentframe">
					<textarea rows="19" cols="80" name="content"></textarea>
				</div>
			</div>				
					
			<div id="bottomBtnframe">
				<div id="listBtn" style="cursor:pointer;" onclick="returnbbs()">목록으로</div>	
				<div id="replyBtn" style="cursor:pointer;" onclick="wirtebbs()">등록하기</div>								
			</div>					
		</div>
	</div>
	</form>
	
	
	
<script type="text/javascript">
function returnbbs(){
	location.href = "sellBoard.do?bid=3";
}
function wirtebbs() {
	$("#frm").submit();
}
</script>

  
    <!-- 여기까지 공간 --></div></div>
    </div>
  
  
  
  
  
<style data-mode="XL">@media (min-width: 1200px) {
  .u-block-3b75-1 {
    background-image: url("./images/low-angle-building-city_23-2148814160.jpg?rand=1914");
    background-position: 50% 50%;
  }
  .u-block-3b75-2 {
    min-height: 704px;
  }
  .u-block-3b75-28 {
    width: 948px;
    height: 228px;
    background-image: none;
    margin-top: 251px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 0;
  }
  .u-block-3b75-6 {
    width: 827px;
    min-height: 584px;
    background-image: none;
    margin-top: -419px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 60px;
  }
  .u-block-3b75-7 {
    padding-top: 16px;
    padding-bottom: 16px;
    padding-left: 30px;
    padding-right: 30px;
  }
  .u-block-3b75-29 {
    width: 584px;
    min-height: 514px;
    margin-top: 19px;
    margin-right: auto;
    margin-bottom: 0;
    margin-left: 80px;
  }
  .u-block-3b75-30 {
    padding-top: 30px;
    padding-bottom: 30px;
    padding-left: 30px;
    padding-right: 30px;
  }
  .u-block-3b75-31 {
    font-size: 2.25rem;
    font-weight: 700;
    margin-top: 22px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 0;
  }

}</style><style data-mode="LG">@media (max-width: 1199px) and (min-width: 992px) {
  .u-block-3b75-1 {
    background-image: url("./images/low-angle-building-city_23-2148814160.jpg?rand=1914");
    background-position: 50% 50%;
  }
  .u-block-3b75-2 {
    min-height: 580px;
  }
  .u-block-3b75-28 {
    background-image: none;
    width: 940px;
    height: 228px;
    margin-top: 251px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 0;
  }
  .u-block-3b75-6 {
    background-image: none;
    width: 827px;
    min-height: 584px;
    margin-top: -419px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 60px;
  }
  .u-block-3b75-7 {
    padding-top: 16px;
    padding-bottom: 16px;
    padding-left: 30px;
    padding-right: 30px;
  }
  .u-block-3b75-29 {
    width: 584px;
    min-height: 514px;
    margin-top: 19px;
    margin-right: auto;
    margin-bottom: 0;
    margin-left: 80px;
  }
  .u-block-3b75-30 {
    padding-top: 30px;
    padding-bottom: 30px;
    padding-left: 30px;
    padding-right: 30px;
  }
  .u-block-3b75-31 {
    font-size: 2.25rem;
    margin-top: 0;
    margin-bottom: 0;
    margin-left: auto;
    margin-right: auto;
    font-weight: 700;
  }

}</style><style data-mode="MD">@media (max-width: 991px) and (min-width: 768px) {
  .u-block-3b75-1 {
    background-image: url("./images/low-angle-building-city_23-2148814160.jpg?rand=1914");
    background-position: 50% 50%;
  }
  .u-block-3b75-2 {
    min-height: 444px;
  }
  .u-block-3b75-28 {
    background-image: none;
    width: 720px;
    height: 228px;
    margin-top: 251px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 0;
  }
  .u-block-3b75-6 {
    background-image: none;
    width: 720px;
    min-height: 584px;
    margin-top: -419px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 60px;
  }
  .u-block-3b75-7 {
    padding-top: 16px;
    padding-bottom: 16px;
    padding-left: 30px;
    padding-right: 30px;
  }
  .u-block-3b75-29 {
    width: 584px;
    min-height: 514px;
    margin-top: 19px;
    margin-right: auto;
    margin-bottom: 0;
    margin-left: 76px;
  }
  .u-block-3b75-30 {
    padding-top: 30px;
    padding-bottom: 30px;
    padding-left: 30px;
    padding-right: 30px;
  }
  .u-block-3b75-31 {
    font-size: 2.25rem;
    margin-top: 0;
    margin-bottom: 0;
    margin-left: auto;
    margin-right: auto;
    font-weight: 700;
  }

}</style><style data-mode="SM">@media (max-width: 767px) and (min-width: 576px) {
  .u-block-3b75-1 {
    background-image: url("./images/low-angle-building-city_23-2148814160.jpg?rand=1914");
    background-position: 50% 50%;
  }
  .u-block-3b75-2 {
    min-height: 333px;
  }
  .u-block-3b75-28 {
    background-image: none;
    width: 540px;
    height: 228px;
    margin-top: 251px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 0;
  }
  .u-block-3b75-6 {
    background-image: none;
    width: 540px;
    min-height: 584px;
    margin-top: -419px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 60px;
  }
  .u-block-3b75-7 {
    padding-top: 16px;
    padding-bottom: 16px;
    padding-left: 10px;
    padding-right: 10px;
  }
  .u-block-3b75-29 {
    width: 520px;
    min-height: 514px;
    margin-top: 19px;
    margin-right: auto;
    margin-bottom: 0;
    margin-left: 0;
  }
  .u-block-3b75-30 {
    padding-top: 30px;
    padding-bottom: 30px;
    padding-left: 10px;
    padding-right: 10px;
  }
  .u-block-3b75-31 {
    font-size: 2.25rem;
    margin-top: 0;
    margin-bottom: 0;
    margin-left: auto;
    margin-right: auto;
    font-weight: 700;
  }

}</style><style data-mode="XS">@media (max-width: 575px) {
  .u-block-3b75-1 {
    background-image: url("./images/low-angle-building-city_23-2148814160.jpg?rand=1914");
    background-position: 50% 50%;
  }
  .u-block-3b75-2 {
    min-height: 210px;
  }
  .u-block-3b75-28 {
    background-image: none;
    width: 340px;
    height: 228px;
    margin-top: 251px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 0;
  }
  .u-block-3b75-6 {
    background-image: none;
    width: 340px;
    min-height: 584px;
    margin-top: -419px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 60px;
  }
  .u-block-3b75-7 {
    padding-top: 16px;
    padding-bottom: 16px;
    padding-left: 10px;
    padding-right: 10px;
  }
  .u-block-3b75-29 {
    width: 320px;
    min-height: 514px;
    margin-top: 19px;
    margin-right: auto;
    margin-bottom: 0;
    margin-left: 0;
  }
  .u-block-3b75-30 {
    padding-top: 30px;
    padding-bottom: 30px;
    padding-left: 10px;
    padding-right: 10px;
  }
  .u-block-3b75-31 {
    font-size: 1.5rem;
    margin-top: 0;
    margin-bottom: 0;
    margin-left: auto;
    margin-right: auto;
    font-weight: 700;
  }

}</style>
</body>

<footer class="u-align-center u-black u-clearfix u-footer u-footer" id="sec-9346">
    <div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-align-left u-small-text u-text u-text-variant u-text-1">고객 문의 cs@korea.com 제휴문의
            contact@korea.com<br>지역광고 ad@korea.com PR문의 pr@korea.com<br>
            <br>사업자 등록번호 : 333-22-111111<br>
            <br>(주)당근나라
        </p>
        <div class="u-social-icons u-spacing-10 u-social-icons-1">
            <a class="u-social-url" title="facebook" target="_blank" href="https://facebook.com/name">
                <span class="u-icon u-social-facebook u-social-icon u-text-white u-icon-1">
                    <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style="">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-57f0"></use></svg>
                    <svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-57f0">
                        <path fill="currentColor" d="M75.5,28.8H65.4c-1.5,0-4,0.9-4,4.3v9.4h13.9l-1.5,15.8H61.4v45.1H42.8V58.3h-8.8V42.4h8.8V32.2
                                    c0-7.4,3.4-18.8,18.8-18.8h13.8v15.4H75.5z"></path></svg></span>
            </a>
            <a class="u-social-url" title="twitter" target="_blank" href="https://twitter.com/name">
                <span class="u-icon u-social-icon u-social-twitter u-text-white u-icon-2">
                    <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112"style="">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-6479"></use></svg>
                    <svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-6479">
                        <path fill="currentColor" d="M92.2,38.2c0,0.8,0,1.6,0,2.3c0,24.3-18.6,52.4-52.6,52.4c-10.6,0.1-20.2-2.9-28.5-8.2
	                    c1.4,0.2,2.9,0.2,4.4,0.2c8.7,0,16.7-2.9,23-7.9c-8.1-0.2-14.9-5.5-17.3-12.8c1.1,0.2,2.4,0.2,3.4,0.2c1.6,0,3.3-0.2,4.8-0.7
	                    c-8.4-1.6-14.9-9.2-14.9-18c0-0.2,0-0.2,0-0.2c2.5,1.4,5.4,2.2,8.4,2.3c-5-3.3-8.3-8.9-8.3-15.4c0-3.4,1-6.5,2.5-9.2
	                    c9.1,11.1,22.7,18.5,38,19.2c-0.2-1.4-0.4-2.8-0.4-4.3c0.1-10,8.3-18.2,18.5-18.2c5.4,0,10.1,2.2,13.5,5.7c4.3-0.8,8.1-2.3,11.7-4.5
	                    c-1.4,4.3-4.3,7.9-8.1,10.1c3.7-0.4,7.3-1.4,10.6-2.9C98.9,32.3,95.7,35.5,92.2,38.2z"></path></svg></span>
            </a>
            <a class="u-social-url" title="instagram" target="_blank" href="https://instagram.com/name">
                <span class="u-icon u-social-icon u-social-instagram u-text-white u-icon-3">
                    <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style="">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-a97d"></use></svg>
                    <svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-a97d">
                        <path fill="currentColor" d="M55.9,32.9c-12.8,0-23.2,10.4-23.2,23.2s10.4,23.2,23.2,23.2s23.2-10.4,23.2-23.2S68.7,32.9,55.9,32.9z
	                M55.9,69.4c-7.4,0-13.3-6-13.3-13.3c-0.1-7.4,6-13.3,13.3-13.3s13.3,6,13.3,13.3C69.3,63.5,63.3,69.4,55.9,69.4z"></path>
                        <path fill="#FFFFFF" d="M79.7,26.8c-3,0-5.4,2.5-5.4,5.4s2.5,5.4,5.4,5.4c3,0,5.4-2.5,5.4-5.4S82.7,26.8,79.7,26.8z"></path>
                        <path fill="currentColor" d="M78.2,11H33.5C21,11,10.8,21.3,10.8,33.7v44.7c0,12.6,10.2,22.8,22.7,22.8h44.7c12.6,0,22.7-10.2,22.7-22.7
	                V33.7C100.8,21.1,90.6,11,78.2,11z M91,78.4c0,7.1-5.8,12.8-12.8,12.8H33.5c-7.1,0-12.8-5.8-12.8-12.8V33.7
	                c0-7.1,5.8-12.8,12.8-12.8h44.7c7.1,0,12.8,5.8,12.8,12.8V78.4z"></path></svg></span>
            </a>
        </div>
    </div>
</footer>
</html>