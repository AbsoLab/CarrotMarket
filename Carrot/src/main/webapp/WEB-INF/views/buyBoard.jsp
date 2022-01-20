<%@page import="java.util.Calendar"%>
<%@page import="java.time.Month"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="mul.camp.a.dto.ContentDto"%>
<%@page import="java.util.List"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	List<ContentDto> clist = (List<ContentDto>)request.getAttribute("boardlist");
	int bid = (Integer)request.getAttribute("bid");
	SimpleDateFormat sdformat = new SimpleDateFormat("yyyy/MM/dd");
	UserDto user = (UserDto)request.getSession().getAttribute("login");
	 
%>

<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords"
          content="​Thoughtful, collaborative and insightful, ​Creates Unique Design and Construction According to Clients’ Needs, ​Wood Truss Systems, Responsive Pricing​ Table, $ 30, $ 60, Building Company, Read what our customers say">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>당근나라</title>
    <link rel="stylesheet" href="./css/buy.css" media="screen">
    <link rel="stylesheet" href="./css/nicepage.css" media="screen">
    <script class="u-script" type="text/javascript" src="./jquery/jquery.js" ></script>
    <script class="u-script" type="text/javascript" src="./jquery/nicepage.js" ></script>
    <meta name="generator" content="Nicepage 4.2.6, nicepage.com">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <meta name="generator" content="Nicepage 4.2.6, nicepage.com">
</head>

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
                        <img src="./images/8.png" data-href=<% if(user != null){ %>
                                                    "userInfo.do"
                                                <%}else{%>
                                                    "login.do"
                                                <%}%>></span>
    </div>
</header>

<body class="u-body" data-style="login-template-1" data-posts=""
      data-global-section-properties="{&quot;code&quot;:&quot;LOGIN&quot;,&quot;colorings&quot;:{&quot;light&quot;:[&quot;clean&quot;,&quot;clean&quot;],&quot;colored&quot;:[&quot;clean&quot;,&quot;clean&quot;,&quot;clean&quot;],&quot;dark&quot;:[&quot;clean&quot;,&quot;clean&quot;,&quot;clean&quot;]},&quot;isPreset&quot;:true}"
      data-source="fix"
      data-page-sections-style="[{&quot;name&quot;:&quot;login-form-1&quot;,&quot;margin&quot;:&quot;both&quot;,&quot;repeat&quot;:false}]"
      data-page-coloring-types="{&quot;light&quot;:[&quot;clean&quot;,&quot;clean&quot;],&quot;colored&quot;:[&quot;clean&quot;,&quot;clean&quot;,&quot;clean&quot;],&quot;dark&quot;:[&quot;clean&quot;,&quot;clean&quot;,&quot;clean&quot;]}"
      data-page-category="&quot;Login&quot;">
<section class="u-carousel u-slide u-block-3b75-1" custom-posts-hash="[I,T]"
         data-section-properties="{&quot;margin&quot;:&quot;none&quot;,&quot;stretch&quot;:true}" data-id="3b75"
         data-posts-content="[{'images':[[1300,700]],'maps':[],'videos':[],'icons':[],'textWidth':827,'textHeight':456,'id':1,'headingProp':'h2','textProp':'text'}]"
         data-style="group-control-10" id="carousel_509e" data-source="functional_fix" data-image-width="626"
         data-image-height="351" data-interval="5000" data-u-ride="carousel">
    <ol class="u-absolute-hcenter u-carousel-indicators u-block-3b75-2">
        <li data-u-target="#carousel_509e" data-u-slide-to="0" class="u-active u-grey-30"></li>
    </ol>
    <div class="u-carousel-inner" role="listbox">
        <div class="u-active u-align-center u-carousel-item u-clearfix u-image u-block-30aa-1" custom-posts-hash="[I,T]"
             data-section-properties="{&quot;margin&quot;:&quot;none&quot;,&quot;stretch&quot;:true}" data-id="30aa"
             data-posts-content="[{'images':[[1300,700]],'maps':[],'videos':[],'icons':[],'textWidth':827,'textHeight':456,'id':1,'headingProp':'h2','textProp':'text'}]"
             data-style="group-control-10" data-source="functional_fix" data-image-width="626" data-image-height="351">
            <div class="u-clearfix u-sheet u-block-30aa-2">

                <div class="u-custom-color-5 u-shape u-shape-rectangle u-block-30aa-28"></div>
                <div class="u-align-left u-container-style u-group u-radius-50 u-shape-round u-white u-block-30aa-6">
                    <div class="u-container-layout u-block-30aa-7">


                        <div class="u-container-style u-group u-radius-50 u-shape-round u-white u-block-30aa-29">
                            <div class="u-container-layout u-block-30aa-30">
                                <h3 style="color: orange;" class="u-align-center u-text u-text-default u-block-30aa-31">구매게시판</h3>

                               

<br> <br>
<table class="table table-hover" style="width: 660px; text-align:center;">
 <col width="10%"><col width="50%"><col width="10%"> <col width="10%">
<thead>
<tr>
	<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th>
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
	 		<a style="color: orange;" <% if(user != null){ %>
                              href="buyBoardDetail.do?cid=<%=content.getCid()%>"
                           <% }else{ %>
                              href="login.do"
                           <% } %>> <!--상세글로 가기위해 cid 필요-->
	 		<%=content.getTitle()%>
	 		</a>
	 	</td>
	 	<td align="center"><%=content.getId()%></td>
	 	<%
	 	
	 	%>
	 	<td><%= sdformat.format(content.getWritedate())%></td>
	 </tr>
<% 	
	}
}
%>
</tbody>

</table>

<br>
<%
	if(user != null){
%>
<div align="center">
	<a href="buyBoardWrite.do?bid=<%=bid%>" style="color: green;">글쓰기</a>
</div>
<%
	}
%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <style data-mode="XL">@media (min-width: 1200px) {
                .u-block-30aa-1 {
                    background-image: url("./images/low-angle-building-city_23-2148814160.jpg?rand=1914");
                    background-position: 50% 50%;
                }

                .u-block-30aa-2 {
                    min-height: 1285px;
                }

                .u-block-30aa-28 {
                    width: 948px;
                    height: 228px;
                    background-image: none;
                    margin-top: 524px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                }

                .u-block-30aa-6 {
                    width: 827px;
                    min-height: 1155px;
                    background-image: none;
                    height: auto;
                    margin-top: -691px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                }

                .u-block-30aa-7 {
                    padding-top: 16px;
                    padding-bottom: 16px;
                    padding-left: 30px;
                    padding-right: 30px;
                }

                .u-block-30aa-29 {
                    width: 688px;
                    min-height: 1036px;
                    height: auto;
                    margin-top: 19px;
                    margin-right: 36px;
                    margin-bottom: 0;
                    margin-left: auto;
                }

                .u-block-30aa-30 {
                    padding-top: 0;
                    padding-left: 0;
                    padding-right: 0;
                    padding-bottom: 0;
                }

                .u-block-30aa-31 {
                    font-size: 2.25rem;
                    font-weight: 700;
                    margin-top: 19px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                }
            }</style>
            <style data-mode="LG">@media (max-width: 1199px) and (min-width: 992px) {
                .u-block-30aa-1 {
                    background-image: url("./images/low-angle-building-city_23-2148814160.jpg?rand=1914");
                    background-position: 50% 50%;
                }

                .u-block-30aa-2 {
                    min-height: 1060px;
                }

                .u-block-30aa-28 {
                    background-image: none;
                    width: 940px;
                    height: 228px;
                    margin-top: 524px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                }

                .u-block-30aa-6 {
                    background-image: none;
                    width: 827px;
                    margin-top: -691px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                    min-height: 1155px;
                }

                .u-block-30aa-7 {
                    padding-top: 16px;
                    padding-bottom: 16px;
                    padding-left: 30px;
                    padding-right: 30px;
                }

                .u-block-30aa-29 {
                    width: 688px;
                    margin-top: 19px;
                    margin-right: 36px;
                    margin-bottom: 0;
                    margin-left: auto;
                    min-height: 1036px;
                }

                .u-block-30aa-30 {
                    padding-top: 0;
                    padding-bottom: 0;
                    padding-left: 0;
                    padding-right: 0;
                }

                .u-block-30aa-31 {
                    font-size: 2.25rem;
                    font-weight: 700;
                    margin-top: 19px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                }
            }</style>
            <style data-mode="MD">@media (max-width: 991px) and (min-width: 768px) {
                .u-block-30aa-1 {
                    background-image: url("./images/low-angle-building-city_23-2148814160.jpg?rand=1914");
                    background-position: 50% 50%;
                }

                .u-block-30aa-2 {
                    min-height: 812px;
                }

                .u-block-30aa-28 {
                    background-image: none;
                    width: 720px;
                    height: 228px;
                    margin-top: 524px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                }

                .u-block-30aa-6 {
                    background-image: none;
                    width: 720px;
                    margin-top: -691px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                    min-height: 1155px;
                }

                .u-block-30aa-7 {
                    padding-top: 16px;
                    padding-bottom: 16px;
                    padding-left: 30px;
                    padding-right: 30px;
                }

                .u-block-30aa-29 {
                    width: 660px;
                    margin-top: 19px;
                    margin-right: 0;
                    margin-bottom: 0;
                    margin-left: auto;
                    min-height: 1036px;
                }

                .u-block-30aa-30 {
                    padding-top: 0;
                    padding-bottom: 0;
                    padding-left: 0;
                    padding-right: 0;
                }

                .u-block-30aa-31 {
                    font-size: 2.25rem;
                    font-weight: 700;
                    margin-top: 19px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                }
            }</style>
            <style data-mode="SM">@media (max-width: 767px) and (min-width: 576px) {
                .u-block-30aa-1 {
                    background-image: url("./images/low-angle-building-city_23-2148814160.jpg?rand=1914");
                    background-position: 50% 50%;
                }

                .u-block-30aa-2 {
                    min-height: 609px;
                }

                .u-block-30aa-28 {
                    background-image: none;
                    width: 540px;
                    height: 228px;
                    margin-top: 524px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                }

                .u-block-30aa-6 {
                    background-image: none;
                    width: 540px;
                    margin-top: -691px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                    min-height: 1155px;
                }

                .u-block-30aa-7 {
                    padding-top: 16px;
                    padding-bottom: 16px;
                    padding-left: 10px;
                    padding-right: 10px;
                }

                .u-block-30aa-29 {
                    width: 520px;
                    margin-top: 19px;
                    margin-right: 0;
                    margin-bottom: 0;
                    margin-left: auto;
                    min-height: 1036px;
                }

                .u-block-30aa-30 {
                    padding-top: 0;
                    padding-bottom: 0;
                    padding-left: 0;
                    padding-right: 0;
                }

                .u-block-30aa-31 {
                    font-size: 2.25rem;
                    font-weight: 700;
                    margin-top: 19px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                }
            }</style>
            <style data-mode="XS">@media (max-width: 575px) {
                .u-block-30aa-1 {
                    background-image: url("./images/low-angle-building-city_23-2148814160.jpg?rand=1914");
                    background-position: 50% 50%;
                }

                .u-block-30aa-2 {
                    min-height: 383px;
                }

                .u-block-30aa-28 {
                    background-image: none;
                    width: 340px;
                    height: 228px;
                    margin-top: 524px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                }

                .u-block-30aa-6 {
                    background-image: none;
                    width: 340px;
                    margin-top: -691px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                    min-height: 1155px;
                }

                .u-block-30aa-7 {
                    padding-top: 16px;
                    padding-bottom: 16px;
                    padding-left: 10px;
                    padding-right: 10px;
                }

                .u-block-30aa-29 {
                    width: 320px;
                    margin-top: 19px;
                    margin-right: 0;
                    margin-bottom: 0;
                    margin-left: auto;
                    min-height: 1036px;
                }

                .u-block-30aa-30 {
                    padding-top: 0;
                    padding-bottom: 0;
                    padding-left: 0;
                    padding-right: 0;
                }

                .u-block-30aa-31 {
                    font-size: 1.5rem;
                    font-weight: 700;
                    margin-top: 19px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-bottom: 0;
                }
            }</style>
        </div>
    </div>

    <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-text-grey-30 u-block-3b75-3"
       href="#carousel_509e" role="button" data-u-slide="prev">
        <span aria-hidden="true">
            <svg viewBox="0 0 477.175 477.175">
                <path d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
                    c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path>
            </svg>
        </span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-text-grey-30 u-block-3b75-4"
       href="#carousel_509e" role="button" data-u-slide="next">
        <span aria-hidden="true">
            <svg viewBox="0 0 477.175 477.175">
                <path d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
                    c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"></path>
            </svg>
        </span>
        <span class="sr-only">Next</span>
    </a>
    <style data-mode="XL">@media (min-width: 1200px) {
        .u-block-3b75-2 {
            position: absolute;
            bottom: 10px;
        }

        .u-block-3b75-3 {
            position: absolute;
            left: 0;
        }

        .u-block-3b75-4 {
            position: absolute;
            right: 0;
        }
    }</style>
    <style data-mode="LG">@media (max-width: 1199px) and (min-width: 992px) {
        .u-block-3b75-2 {
            position: absolute;
            bottom: 10px;
        }

        .u-block-3b75-3 {
            position: absolute;
            left: 0;
        }

        .u-block-3b75-4 {
            position: absolute;
            right: 0;
        }
    }</style>
    <style data-mode="MD">@media (max-width: 991px) and (min-width: 768px) {
        .u-block-3b75-2 {
            position: absolute;
            bottom: 10px;
        }

        .u-block-3b75-3 {
            position: absolute;
            left: 0;
        }

        .u-block-3b75-4 {
            position: absolute;
            right: 0;
        }
    }</style>
    <style data-mode="SM">@media (max-width: 767px) and (min-width: 576px) {
        .u-block-3b75-2 {
            position: absolute;
            bottom: 10px;
        }

        .u-block-3b75-3 {
            position: absolute;
            left: 0;
        }

        .u-block-3b75-4 {
            position: absolute;
            right: 0;
        }
    }</style>
    <style data-mode="XS">@media (max-width: 575px) {
        .u-block-3b75-2 {
            position: absolute;
            bottom: 10px;
        }

        .u-block-3b75-3 {
            position: absolute;
            left: 0;
        }

        .u-block-3b75-4 {
            position: absolute;
            right: 0;
        }
    }</style>
</section>
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
</body>
</html>