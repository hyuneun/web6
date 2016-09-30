<%@page import="pack.Student"%>
<%@page import="pack.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
예전 : <%=request.getAttribute("man") %><br>
EL : 안녕${requestScope.man} ${man}<br>
<br>
예전 : <%Person p = (Person)request.getAttribute("person"); %><br>
예전 : <%=p.getName() %><br>

예전 : <%Student s = (Student)request.getAttribute("student"); %><br>
예전 : <%=p.getName() %><br>
	<%=((Student)request.getAttribute("student")).getAge() %>

EL : ${person.name}<br>
EL : ${student.age}<br>
${animal[0]} ${animal[1]} ${animal[2]}<br>
<c:forEach var="a" items="${list}">
	${a[0]}
</c:forEach>
<br><br>

<c:if test="${list != null }">
	<c:forEach var="a" items="${list}">
	${a[0]} ${a[1]} ${a[2]}
</c:forEach>
</c:if>
<br><br>

<c:choose>
	<c:when test="${list == null}">
	자룡벗음
	</c:when>
	<c:otherwise>
	d잇슴
	</c:otherwise>
</c:choose>

<hr>
try ~ except 처리

<c:catch var="myerr">
<%int a = 10 / 0; out.println(a); %>
</c:catch>
<c:if test="${myerr != null }">
에러발생 : ${myerr.message }
</c:if>
<br>
다른문서포함
include 지시어 사용<%@include file="foham.jsp" %>
jsp 액션테그사용<jsp:include page="foham.jsp"></jsp:include>
<br>
jstl 사용<c:import url="foham.jsp"></c:import>
<br>
<c:import url="http://www.naver.com"></c:import>
<br>
<c:set var="u" value="http://daum.net"></c:set>
<c:import url="${u}" var="uu"></c:import>
<c:out value="${u }"></c:out>
<c:out value="${uu }"></c:out>

</body>
</html>
