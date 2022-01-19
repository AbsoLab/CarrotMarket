<%@page import="mul.camp.a.dto.ContentDto"%>
<%@page import="mul.camp.a.dto.ReplyDto"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    UserDto userinfo = (UserDto)request.getSession().getAttribute("login");
    ReplyDto rdto = (ReplyDto)request.getAttribute("replydto");
    ContentDto cdto = (ContentDto)request.getAttribute("sellBoard");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글수정</title>
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

<div id="mainFdis">
	<div id="mainFrame">			
		<form id="frm" action="sellupdatereplyAF.do" method="get">
			<input type="hidden" name="cid" value="<%=cdto.getCid()%>">
			<input type="hidden" name="rid" value="<%=rdto.getRid()%>">
			<input type="hidden" name="uid" value="<%=userinfo.getUid()%>">
			<input type="hidden" name="bid" value="3">
			
			<div class="content contentFrame">
				<%=rdto.getUid() %>
			</div>				
			<div class="content contentFrame">
				<textarea rows="15" cols="101" name="content"><%=rdto.getContent() %></textarea>
			</div>
			<div class="updateBbs">
				<div id="upBtn" style="cursor:pointer;" onclick="updateReply()">수정하기</div>					
			</div>
		</form>
	</div>	
</div>
<script type="text/javascript">
function updateReply(){
	$("#frm").submit();
}
</script>

</body>
</html>