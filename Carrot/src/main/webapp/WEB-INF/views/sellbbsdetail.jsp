<%@page import="java.util.List"%>
<%@page import="mul.camp.a.dto.ReplyDto"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@page import="mul.camp.a.dto.ContentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
	// 답글의 depth와 image를 추가해주는 함수
	// depth 1 = ' ' ->
	// depth 2 = '  ' ->
	public String arrow(int depth){
		String res = "<img src='resources/image/arrow.png' width='20px' height='20px'/>";
		String nbsp = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
		
		String ts = "";
		for(int i=0; i < depth; i++){
			ts += nbsp;
		}
		return depth==0?"":ts + res;
	}
	
	%>
    
    <%
    ContentDto cdto = (ContentDto)request.getAttribute("sellBoard");
    UserDto user = (UserDto)request.getAttribute("user");
    List<ReplyDto> replyBbs = (List<ReplyDto>)request.getAttribute("reply");

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해당 게시글 상세내용</title>
<style type="text/css">
#mainFrame{
	width: 1000px;
	padding: 10px;
	margin-bottom: 80px
}
.disFR{
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.disFL{
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-bottom: 1px solid gray;
}
.disR{
	display: flex;
	justify-content: Left;
	align-items: center;
}
#mainFdis{
	display: flex;
	justify-content: center;
}
.displayFlex{
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 5px 10px;
}
.title{
	width: 220px;
	height: 23px;
	padding: 0px 5px;
	margin: 0px 25px 0px 0px;
	font-weight: bold;
}
.content{
	width: 950px;
	margin: 10px 20px;
	padding: 5px 10px;
}
.btnFrame{
	width: 970px;
	margin: 10px 0px 10px 20px;
	padding: 5px 0px;
}
#replyContent{
	/* width: 830px; */
	width: 550px;
	margin: 5px 0px 10px 10px;
	padding: 5px 10px;
}
#replyBtn{
	margin: 5px 10px 5px 20px;
	border: 1px solid green;
	border-radius: 3px;
	background-color: rgb(72, 214, 143);
}
#listBtn{
	margin: 5px 10px 5px 20px;
	border: 1px solid green;
	border-radius: 3px;
	background-color: rgb(72, 214, 143);
}
#replyFrame{
	margin: 80px 20px 0px 20px;
	padding-top: 15px;
	width: 970px;
	
}
.btnDiv{
	margin-left: 10px;
	border: 1px solid green;
	border-radius: 3px;
	background-color: rgb(72, 214, 143);
}
.contentFrame{
	border: 1px solid orange;
}
.dis{
	display: flex;
	justify-content: space-between;
	align-items: center;
	width: 970px;
}
hr{
margin: 50px 20px;
	width: 970px;
	align: cernter;
}
textarea{
border: none;
resize: none;
overflow: hidden;
height: auto;
}
textarea:focus {outline:none;}
a { text-decoration:none; color: gray;} 
/* div{
	border:1px solid black;
} */
</style>
</head>
<body>
<h1>해당 게시글 상세내용</h1>
<div id="mainFdis">
	<div id="mainFrame">
		<div class="btnFrame disFR">
			<div class="dis">
				<%
				 UserDto userinfo = (UserDto)request.getSession().getAttribute("login");
				%>
				<%
				if(userinfo.getId().equals( user.getId() )){
				%>
				<div>판매게시판</div>
				<div class="displayFlex">
					<div class="btnDiv" style="cursor:pointer;" onclick="updatebbs(<%=cdto.getCid() %>)">수정</div>
					<div class="btnDiv" style="cursor:pointer;" onclick="deletebbs(<%=cdto.getCid() %>)">삭제</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
			
			
		<div class="content contentFrame">
			<%=cdto.getUid() %>
		</div>
			
		<div class="content contentFrame">
			<textarea rows="1" cols="101" readonly="readonly"><%=cdto.getTitle() %></textarea>
		</div>
			
		<div class="content contentFrame">
			<textarea rows="15" cols="101" readonly="readonly"><%=cdto.getContent() %></textarea>
		</div>
		
		
		<hr>
		
		<div id="replyFrame" class="contentFrame">
		
			
		
			<% if(replyBbs == null || replyBbs.size() == 0){ %>
			<div class="title">
			</div>
			<div id="replyContent">
			</div>
				<%
			}
			else{
				for(int i=0; i < replyBbs.size(); i++){
					ReplyDto rpbbs = replyBbs.get(i);
				%>
			
			<div class="disFL">
				<div class="title">
				<%=arrow(rpbbs.getDepth()) %> 
					<%=rpbbs.getUid()%>
				</div>
				<div class="disR">
					<div id="replyContent">
						<%=rpbbs.getContent()%>
					</div>
					<%if(userinfo.getId().equals( user.getId() )){
						%>
					<div>
						<a href="sellupdatereply.do?rid=<%=rpbbs.getRid()%>&cid=<%=cdto.getCid()%>">수정</a>
						<a style="cursor:pointer" onclick="deletereply(<%=rpbbs.getRid() %>)">삭제</a>
					</div>
					<%
					}
					%>
					<div style="margin: 0px 5px;"><a style="cursor:pointer" onclick="sellreplyanswer(<%=rpbbs.getRid()%>)">답글</a></div>
					
				</div>
			</div>	
			<input id="ref" type="hidden" name="ref" value="<%=rpbbs.getRef()%>">
			<input id="step" type="hidden" name="step" value="<%=rpbbs.getStep()%>">
			<input id="depth" type="hidden" name="depth" value="<%=rpbbs.getDepth()%>">
				<%
				}
			}
			%>
			
		<div class="disFR">
			<div id="listBtn" style="cursor:pointer;" onclick="returnbbs()">목록으로</div>	
			<div id="replyBtn" style="cursor:pointer;" onclick="answerbbs(<%=cdto.getCid()%>)">댓글쓰기</div>	
				
		</div>	
						
		</div>	
		
		
	</div>
</div>
<input id="cid" type="hidden" name="cid" value="<%=cdto.getCid()%>">
<input id="uid" type="hidden" name="uid" value="<%=userinfo.getUid()%>">


<script type="text/javascript">
function returnbbs(){
	location.href = "sellBoard.do?bid=3";
}
function answerbbs(cid) {
	location.href = "sellanswer.do?cid=" + cid;
}
function updatebbs(cid) {
	location.href = "sellupdatebbs.do?cid=" + cid;
}
function sellreplyanswer(rid){
	let cid = document.getElementById("cid").value;
	location.href = "sellreplyanswer.do?rid=" + rid + "&cid=" + cid;
	/* let ref = document.getElementById("ref").value;
	let step = document.getElementById("step").value;
	let depth = document.getElementById("depth").value;
	
	location.href = "replyanswer.do?ref=" + rid + "&step=" + step + "&depth=" + depth; */
}
function deletereply(rid){
	alert('댓글을 삭제했습니다');
	let cid = document.getElementById("cid").value;
	location.href = "selldeletereply.do?rid=" + rid + "&cid=" + cid;
}
function deletebbs(cid) {
	alert('게시글을 삭제했습니다');
	location.href = "selldeletebbs.do?cid=" + cid;
}
</script>

</body>
</html>