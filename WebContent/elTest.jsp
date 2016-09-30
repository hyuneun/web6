<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function aa(){
	alert(sessionStorage.getItem("bb"))
}
</script>
</head>
<body>
EL연산자<br>
${3+4}<br>
\${5+4} --> ${6/4 }<Br><!--${5 div 4}  -->
${5%3 }<!--${5 mod 4}  --><br>
${5 > 3?10:20 }<br>
${5>3}<br>
${5>=4 and 4<2 }

<br>EL내장객체<br>
<%
request.setAttribute("aa", "aireeeeeee");
session.setAttribute("bb", "bookeeeeee");
application.setAttribute("cc", "cat");
%>
<%=request.getAttribute("aa")%> ${requestScope.aa }<br>
<%=session.getAttribute("bb") %>${sessionScope.bb }<br>
<%=application.getAttribute("cc") %>${applicationScope.cc }<br>
<br>
<a href="javascript:aa()">aaa</a><br>
jsp 내장객체 : <%=request.getHeader("host") %>
el 내장객체 : ${header.host }<br>

컬렉션 객체 처리<br>
<%
ArrayList list = new ArrayList();
list.add("kor");
list.add("enmg");
request.setAttribute("list", list);
%>
${list[0]},${list[1] }<br>

<p>클라이언트자료읽기
<a href="elTest.html">html call</a><br>
이름 : ${param.irum}, ${param["irum"]}<br>
성격 : ${param.sung} <br>
${paramValues.sung[0] }
</body>
</html>
