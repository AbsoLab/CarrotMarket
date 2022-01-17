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
 
	<table class="table table-bordered" style="width:1000px" >
		<thead>
			<tr>
				<th>작성자</th><th>댓글</th><th>작성일시</th>
			</tr>
		</thead>
		<tbody>
		<%
		if(rplist == null || rplist.size()== 0){
		%>
		<tr>
			<td colspan ="3">댓글이 없습니다.</td>
		</tr>
		<%
		}else{
			for(int i = 0; i < rplist.size(); i++){
				ReplyDto reply = rplist.get(i);
		%>
		<tr>
			<script type="text/javascript">
			commentList();
			</script>
		</tr>
		<% 
			}
		}
		%>
		</tbody>
		<tfoot >
			<tr>
				<td colspan = "2">
				<!-- cid와 댓글작성자의 uid(세션에서 가져옴) -->
				<form id = frm action="addReply.do">
				<input type="hidden" id = "cid" name = "cid" value="<%=detail.getCid()%>">
				<input type="hidden" id = "uid" name = "uid" value="1"> <!-- user.getUid()  -->
				
				<textarea id = "content" name = "content" rows="10" cols="100" placeholder="댓글을 입력해주세요">
				</textarea>
				</td>
				</form>
				<td><button id ="btn" type="button" onclick="addreply()">댓글 작성</button> </td>
				
			</tr>
		</tfoot>
	</table>
	
	</div>
<script type="text/javascript">
	function updateboard(cid){
		location.href = "updateBoard.do?cid=" + cid;
	}
	function deleteboard(cid){
		location.href = "deleteBoard.do?cid=" + cid;
	}
	$(document).ready(function(){
		$("#btn").click(function(){
			var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
		    commentInsert(insertData); //Insert 함수호출(아래)
		});
		  
		//댓글 목록 
		function commentList(){
		    $.ajax({
		        url : 'addReply.do',
		        type : 'get',
		        data : {'bno':bno},
		        success : function(data){
		            var a =''; 
		            $.each(data, function(key, value){ 
		                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
		                a += '<div class="commentInfo'+value.cno+'">'+'댓글번호 : '+value.cno+' / 작성자 : '+value.writer;
		                a += '<a onclick="commentUpdate('+value.cno+',\''+value.content+'\');"> 수정 </a>';
		                a += '<a onclick="commentDelete('+value.cno+');"> 삭제 </a> </div>';
		                a += '<div class="commentContent'+value.cno+'"> <p> 내용 : '+value.content +'</p>';
		                a += '</div></div>';
		            });
		            
		            $(".commentList").html(a);
		        }
		    });
		}
		 
		//댓글 등록
		function commentInsert(insertData){
		    $.ajax({
		        url : '/comment/insert',
		        type : 'post',
		        data : insertData,
		        success : function(data){
		            if(data == 1) {
		                commentList(); //댓글 작성 후 댓글 목록 reload
		                $('[name=content]').val('');
		            }
		        }
		    });
		}
		 
		//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
		function commentUpdate(cno, content){
		    var a ='';
		    
		    a += '<div class="input-group">';
		    a += '<input type="text" class="form-control" name="content_'+cno+'" value="'+content+'"/>';
		    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+cno+');">수정</button> </span>';
		    a += '</div>';
		    
		    $('.commentContent'+cno).html(a);
		    
		}
		 
		//댓글 수정
		function commentUpdateProc(cno){
		    var updateContent = $('[name=content_'+cno+']').val();
		    
		    $.ajax({
		        url : '/comment/update',
		        type : 'post',
		        data : {'content' : updateContent, 'cno' : cno},
		        success : function(data){
		            if(data == 1) commentList(bno); //댓글 수정후 목록 출력 
		        }
		    });
		}
		 
		//댓글 삭제 
		function commentDelete(cno){
		    $.ajax({
		        url : '/comment/delete/'+cno,
		        type : 'post',
		        success : function(data){
		            if(data == 1) commentList(bno); //댓글 삭제후 목록 출력 
		        }
		    });
		}
		 
		 
		 
		 
		$(document).ready(function(){
		    commentList(); //페이지 로딩시 댓글 목록 출력 
		});
	
	});
</script>
</body>
</html>