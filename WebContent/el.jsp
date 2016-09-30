<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
EL 맞이하기
<%if(request.getParameter("user") == null){	%>
	<jsp:forward page="el.html" />
<%} %>

표현식<%=request.getParameter("user") %><br>
EL사용 : ${param.user}
</body>
</html>