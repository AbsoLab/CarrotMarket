<%@page import="mul.camp.a.dto.UserDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%
List<UserDto> userinfo = (List<UserDto>)request.getAttribute("login");
%> --%>
<%
// session에서 사용자 정보를 산출
 UserDto user = (UserDto)request.getSession().getAttribute("login");

%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>로그인 후 화면(메인)</h1>
<h2><a href="sellBoard.do?bid=<%=3 %>">판매게시판으로 이동</a></h2>

</body>
</html>