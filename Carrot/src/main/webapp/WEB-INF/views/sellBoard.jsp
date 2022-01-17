<%@page import="mul.camp.a.dto.ContentDto"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
List<ContentDto> sellBbs = (List<ContentDto>)request.getAttribute("sellBoard");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.searchDiv{
	display: flex;
	justify-content: right;
}
#maincontentDiv{
	border: 1px solid black;
	width: 1000px;
	padding: 20px;
}
#textDiv{
	border: 1px solid orange;
	border-radius: 5px;
	margin: 0px 10px;
}
.textBox{
	border: none;
}
#searchBox{
	display: flex;
	align-items: center;
	justify-content: center;
	border: 1px solid orange;
	border-radius: 5px;
	width: 40px;
	background-color: orange;
}
#searchIn{
	font-size: 12px;
}
select {
     width:70px;
     padding:5px 10px;
     border:1px solid green;
     font-family:'Nanumgothic';
     background:url('resources/image/arr_green.png') no-repeat 95% 50%/20px auto;
     border-radius:5px;
     -webkit-appearance: none;
     -moz-appearance: none;
     appearance : none;
}
input:focus {outline:none;}
select::-ms-expand {
   display: none;
}
</style>
</head>
<body>

<h1>이곳은 판매게시판입니다</h1>
<div align="center">
	<div id="maincontentDiv">
		<div class="searchDiv">
			<div>
				<select id="choice">
					<option value="title">제목</option>
					<option value="content">내용</option>
					<option value="writer">작성자</option>
				</select>
			</div>
			<div id="textDiv">
				<input type="text" id="search" value="" class="textBox">
			</div>
			<div id="searchBox">
				<!-- <button type="button" onclick="searchBbs()">검색</button> -->
				<div onclick="searchBbs()" style="cursor:pointer;" id="searchIn">검색</div>
			</div>
		</div>
		
		<br><hr><br>
		
		<table class="table table-hover" style="width: 1000px">		<!-- attribute = property: 1000px -->
		<!-- <col width="30"><col width="200"><col width="80"> -->
		
		<thead>
		<tr>
			<th>번호</th><th>제목</th><th>작성일</th><th>작성자</th>
		</tr>
		</thead>
		
		<tbody>
		<%
		if(sellBbs == null || sellBbs.size() == 0){
		%>
			<tr>
				<td colspan="4" style="text-align: center">작성된 글이 없습니다.</td>	
			</tr>
			<%
		}
		else{
			for(int i=0; i < sellBbs.size(); i++){
				ContentDto bbs = sellBbs.get(i);
			%>
					<tr>
						<th><%=i+1 %></th>			
						
						<td>
							<a href="bbsdetail.do?seq=<%=bbs.getCid() %>">
								<%=bbs.getTitle() %>
							</a>
						</td>
						
						
						<td><%=bbs.getWritedate() %></td>
						<td align="center"><%=bbs.getUid() %></td>
					</tr>
				 
		<%
			}
		}
		%>
		</tbody>
		</table>
	</div>
</div>
<br>
<div align="center">
	<a href="bbswrite.do">글쓰기</a>
</div>

<script type="text/javascript">
function searchBbs() {
	let choice = document.getElementById("choice").value;
	let search = document.getElementById("search").value;
	
	location.href = "sellboard.do?choice=" + choice + "&search=" + search;
}

</script> 

</body>
</html>