<%@page import="java.text.SimpleDateFormat"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<UserDto> total = (List<UserDto>)request.getAttribute("totalUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 전용 페이지</title>
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

@import url('https://fonts.googleapis.com/css2?family=Dongle&family=Noto+Sans+KR:wght@300;400&family=Noto+Serif+KR:wght@300&display=swap');
* {
font-family: 'Noto Serif KR', serif;
}
.adm {
	list-style:none;
	padding:5px 10px;
	background: #FA9F63;
	color: #fff;
	font-size: 16px;
	
}

th, td {
	text-align: center;
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
                            href="qnaBoard.do?bid=0" style="padding: 12px 0px;">문의사항</a>#contact
                    </li> 
               	<li class="u-nav-item">
                          <a class="u-button-style u-nav-link" href="admin.do" style="padding: 10px 0px;">관리자모드</a>
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
	<div class="container">
		<h1>관리자 전용 페이지</h1>
		<hr>
		<div class="row">
			<ul class="col-2">
				<li class="adm">회원 관리</li>
				<li class="adm">관리 목록</li>
				<li class="adm">관리 목록</li>
				<li class="adm">관리 목록</li>
				<li class="adm">관리 목록</li>
			</ul>
			
			<div class="col-10">
				<h3>회원관리</h3>
				<hr>
				
					<!-- 통합검색 -->
					
						<div class="input-group mb-3">
							<input type="text" id="total" list="browser" onkeyup="enterkey()" value="" class="form-control" placeholder="통합 검색: 이름, 아이디, 이메일 등" aria-label="Recipient's username" aria-describedby="button-addon2">
							<button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="admSearch()">검색</button>
						</div>
			
				<h3>회원리스트</h3>
				<table class="table table-striped table-hover table-bordered table-sm">
					<tr>
						<th scope="col">
						 	<input type="checkbox" id="chkbox">
						</th>
						<th scope="col">회원번호</th>
						<th scope="col">아이디</th>
						<th scope="col">이름</th>
						<th scope="col">생년월일</th>
						<th scope="col">이메일</th>
						<th scope="col">전화번호</th>
						<th scope="col">지역</th>
					</tr>
					
					<!-- 검색한 리스트 출력 -->
					<% if(total == null) {
						
					} else {%>
						<% for(int i=0; i < total.size(); i++) {
								UserDto tUser = total.get(i);
								SimpleDateFormat fm = new SimpleDateFormat("yyMMdd");
								String birth = fm.format(tUser.getBirthdate());
						%>
							
							<tr>
								<th scope="col">
									<input type="checkbox" id="chkbox" name="chkUser" value="<%=tUser.getUid()%>">
								</th>
								<td scope="col"><%=tUser.getUid()%></td>
								<td scope="col"><%=tUser.getId()%></td>
								<td scope="col"><%=tUser.getName()%></td>
								<td scope="col"><%=birth%></td>
								<td scope="col"><%=tUser.getEmail()%></td>
								<td scope="col"><%=tUser.getPhone()%></td>
								<td scope="col"><%=tUser.getLocation()%></td>
							</tr>
							
						<% } 
					}		%>
				</table>
				<button type="button" class="btn btn-secondary float-right"  onclick="selDel()">선택삭제</button>
				<button type="button" class="btn btn-secondary float-right" style="margin-right: 5px;" onclick="selUpd()">선택수정</button>
			</div>
		</div>
	</div>
		

<!-- 통합검색 버튼 -->
<script type="text/javascript">
function admSearch() {
	let total = document.getElementById("total").value;
	
	location.href= "admSearch.do?total="+ total;
	
};

function enterkey() {
	if(window.event.keyCode == 13) {
		admSearch();
	};
};

// 삭제할 회원 정보 선택후 삭제 버튼
function selDel() {
	var arrDel = new Array();
	
	$("input[name='chkUser']:checked").each(function() {
		arrDel.push(this.value);
	});
	
	$.ajax({
		url:"admDel.do",
		type:"post",
		data: { param: arr},
		success: function(rep) {
			alert('rep');
			if(rep == "Y") {
				alert('선택한 회원 정보가 삭제되었습니다.');
			}else {
				alert('회원 정보가 일치하지 않습니다.');
			}
		},
		error: function() {
			alert('error');
		}
	});
};

// 수정할 회원 선택후 수정 버튼
function selUpd() {
	var arrUpd = new Array();
	if($("input[name='chkUser']:checked").length > 1) {
		alert("수정은 1개만 가능합니다.");
	} else if ($("input[name='chkUser']:checked").length == 1) {
		let uid = 0;
		$("input[name='chkUser']:checked").each(function () {
			uid = this.value;
		});
		location.href= "admUpdate.do?uid="+ uid;
		
	} else if ($("input[name='chkUser']:checked").length == 0) {
		alert('수정할 회원을 선택해주세요.');
	}
	
};

//나중에하기.


</script>
</body>
</html>