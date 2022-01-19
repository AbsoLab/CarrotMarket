<%@page import="mul.camp.a.dto.UserDto"%>
<%@page import="mul.camp.a.dto.ContentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ContentDto cdto = (ContentDto)request.getAttribute("sellBoard");
    UserDto userinfo = (UserDto)request.getSession().getAttribute("login");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정페이지</title>
<style type="text/css">
#mainFdis{
	display: flex;
	justify-content: center;
}
#mainFrame{
	width: 1000px;
	padding: 10px;
	margin-bottom: 80px;
}
.content{
	width: 950px;
	margin: 10px 20px;
	padding: 5px 10px;
}
.contentFrame{
	border: 1px solid orange;
}
.updateBbs{
	display: flex;
	justify-content: right;
}
#upBtn{
	margin: 5px 10px 5px 20px;
	border: 1px solid green;
	border-radius: 3px;
	background-color: rgb(72, 214, 143);
}
/* div{
border: 1px solid black;
} */
textarea{
resize: none;
overflow: hidden;
height: auto;
}
textarea:focus {outline:none;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquer	y/3.5.1/jquery.min.js"></script>
</head>
<body>
<h1>해당 게시글 수정페이지</h1>
<div id="mainFdis">
	<div id="mainFrame">			
		<form id="frm" action="sellupdatebbsAF.do" method="get">
			<input type="hidden" name="cid" value="<%=cdto.getCid()%>">
			<input type="hidden" name="bid" value="<%=cdto.getUid()%>">
			<input type="hidden" name="bid" value="3">
			
			<div class="content contentFrame">
				<%=cdto.getId() %>
			</div>
				
			<div class="content contentFrame">
				<textarea rows="1" cols="101" name="title"><%=cdto.getTitle() %></textarea>
			</div>
				
			<div class="content contentFrame">
				<textarea rows="15" cols="101" name="content"><%=cdto.getContent() %></textarea>
			</div>
			<div class="updateBbs">
				<div id="upBtn" style="cursor:pointer;" onclick="updateBbs()">수정하기</div>					
			</div>
		</form>
	</div>	
</div>

<script type="text/javascript">
function updateBbs(){
	$("#frm").submit();
}
</script>

</body>
</html>