<%@page import="java.util.List"%>
<%@page import="mul.camp.a.dto.ContentDto"%>
<%@page import="mul.camp.a.dto.ReplyDto"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
// 답글의 depth 와 image를 추가해 주는 함수
// depth 1 = ' '-> 
// depth 2 = '  '->
public String arrow(int depth){
	String res = "└";
	String nbsp = "&nbsp;&nbsp;&nbsp;&nbsp;";	// 여백
	
	String ts = "";
	for(int i = 0;i < depth; i++){
		ts += nbsp;
	}
	
	return depth==0?"":ts + res;
}

%>

<%
	ContentDto detail = (ContentDto)request.getAttribute("detail");
%>
	  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

</head>
<body>

<h1>상세글보기</h1>

<div align="center">
<% UserDto User = (UserDto)request.getSession().getAttribute("login"); %>
<table class="table table-bordered" style="width: 1000px">
	<tr>
		<th>작성자</th>
		<td><%= detail.getUid() %></td>
	</tr>
	
	<tr>
		<th>제목</th>
		<td><%= detail.getTitle() %></td>
	</tr>
	
	<tr>
		<th>작성일</th>
		<td><%= detail.getWritedate() %></td>
	</tr>
	
	<tr>
		<th>내용</th>
		<td align="center">
			<textarea rows="15" cols="100" readonly="readonly"><%=detail.getContent() %></textarea>
		</td>
	</tr>
</table>

<%
	if(detail.getUid()==User.getUid()){
%>
	<button type="button" onclick="updateboard(<%=detail.getCid()%>)">수정</button>
	<button type="button" onclick="deleteboard(<%=detail.getCid()%>)">삭제</button>
<%
}
%>


<!-- 댓글 -->
<%
	List<ReplyDto> replyList = (List<ReplyDto>)request.getAttribute("getreplyList");
%>

<!--   attribute  property   -->
<table style="width: 1000px">
<!-- <col width="30"><col width="200"><col width="80"> -->

<br><br><br>
<tbody>

<%
if(replyList == null || replyList.size() == 0){
	%>
	<tr>
		<td colspan="4">작성된 글이 없습니다</td> 
	</tr>
	<%
}else{
	
	for(int i = 0;i < replyList.size(); i++){
		ReplyDto reply = replyList.get(i);	
	%>
		<tr>	
			<th> No <%=i+1 %></th>
			<td>
				UID : <%=reply.getUid() %>
			</td>
			
			<td> Date : <%=reply.getWritedate()%></td>
			
		<%
		if(User.getUid()==reply.getUid()){
		%>
		
			<td><a href="ReplyDelete.do?cid=<%=detail.getCid()%>&&rid=<%=reply.getRid()%>">삭제</a></td>
       			
		
<%		} %>
		
		
	<tr><td>내용</td><td colpan="3" width="300px"><%=reply.getContent() %></td> 	
	
<%	}
} %>


</tbody>
</table>
<div>
<br>
<form id ="frm" action="ReplyWriteAf.do" method="post">
<input type="hidden" name="cid" id="cid" value="<%=detail.getCid()%>">
<input type="hidden" name="uid" id="uid" value="<%=User.getUid()%>">

<table>
<tr>
<td> 아이디 </td>
<td rowspan="2"><textarea cols="80" name="content" id="content" ></textarea><td>
<td><button type="button"  onclick="ReplyWrite()">쓰기</button><td></tr>
<tr><td><%=User.getId() %><td></tr>
</table>
</form>
</div>
	

<!-- 삭제/수정 UID비교 후 버튼 표시 -->
<script type="text/javascript">

	function updateboard(cid){
		location.href = "NoticeBoardUpdate.do?cid=" + cid;
	}
	function deleteboard(cid){
		location.href = "NoticeBoardDelete.do?cid=" + cid;
	}
	
	function ReplyWrite() {
		if ($("#content").val() == ''){
			alert('댓글에 내용 입력 해주세요');
		}else{
			$("#frm").submit();
		}
	}
</script>


</body>
</html>






