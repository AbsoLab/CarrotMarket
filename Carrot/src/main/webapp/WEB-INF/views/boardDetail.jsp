<%@page import="java.util.List"%>
<%@page import="mul.camp.a.dto.ReplyDto"%>
<%@page import="mul.camp.a.dto.UserDto"%>
<%@page import="mul.camp.a.dto.ContentDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ContentDto detail = (ContentDto)request.getAttribute("detail");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div align ="center">
		<h1>상세글</h1>
		<table class="table table-bordered" style="width:1000px" >
	<col width="100px">
		<tr>
			<th>작성자</th>
			<td><%=detail.getUid() %></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><%=detail.getTitle() %></td>
		</tr>
		<tr>
			<th>작성일</th>
			<td><%=detail.getWritedate() %></td>
		</tr>
		
		<tr>
			<th>내용</th>
			<td><textarea readonly rows="15" cols="100"><%=detail.getContent() %></textarea></td>	
		</tr>
		
	</table>
<%	
	//UserDto user = (UserDto)request.getSession().getAttribute("login");
 
	if(1 == (detail.getUid())){ // user.getUid 를 1로 대체
%>
	<button type="button" onclick="updateboard(<%=detail.getCid()%>)">수정</button>
	<button type="button" onclick="deleteboard(<%=detail.getCid()%>)">삭제</button>
	<br>
	<a href="buyBoard.do?bid=2">목록으로 돌아가기</a>
<%
	}
	List<ReplyDto> rplist = (List<ReplyDto>)request.getAttribute("reply");
	//댓글 창 구현
%>	
 	<form id="frm" action="addReply.do" method="post">
 		<table class="table table-hover" style="width: 1000px">
 			<thead>
 				<th>작성자</th><th>내용</th><th>작성일</th><th>정보</th><th>삭제-수정-답글</th>
 			</thead>
 			<tbody>
 <%
 	if(rplist == null || rplist.size() == 0){
 %>				
			 	<tr>
			 		<td colspan="4">댓글이 없습니다.</td>
			 	</tr>
<%
 	} else{
 		for(int i=0; i < rplist.size(); i++){
 			ReplyDto reply = rplist.get(i);
%>
				<tr>
					<th><%=reply.getUid() %></th>
					<td><%=reply.getContent() %></td>
					<td><%=reply.getWritedate() %></td>
					<td><%=reply.getRef()%> - <%=reply.getDepth()%> - <%=reply.getStep() %></td>
					<td>
						<a href="answerReply.do">답글</a>
						<%
						if(reply.getUid()== 1){ // user.getUid() 대신 1
												// 같아야만 수정 삭제 가능 
							%>
							<a href ="updateReply.do?rid=<%=reply.getRid()%>">수정</a>
							<a href="deleteReply.do?rid=<%=reply.getRid()%>">삭제</a>
							<%
						}
						%>
					</td>
				</tr>

<% 			
 		}
 	}
%>
 			</tbody>
 			<tfoot>
 				<input type="hidden" name = "uid" value="1"><!-- user.getUid 를 1로 대체 -->
 				<input type="hidden" name = "cid" value = "<%=detail.getCid()%>">
 				<td colspan="3"><textarea id ="content" name="content" rows="10" cols="100"></textarea></td>
 				<td><button type="button" onclick="addreply()">댓글작성</button></td>
 			</tfoot>
 		</table>
 			
 	</form>
	
	
	</div>
<script type="text/javascript">
	function updateboard(cid){
		location.href = "updateBoard.do?cid=" + cid;
	}
	function deleteboard(cid){
		location.href = "deleteBoard.do?cid=" + cid;
	}
	function addreply(){
		if($("#content").val() ==''){
			alert('댓글내용을 작성해주세요')
		}
		else{
			$("#frm").submit();
		}
	}
	
</script>
</body>
</html>