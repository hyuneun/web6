<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#video { 
     position: absolute;
     top: 0px;
     left: 0px;
     min-width: 80%;
     min-height: 80%;
     width: auto;
     height: auto;
     z-index: -1;
     overflow: hidden;
}
</style>
</head>
<body>
jstl 반복문<br>
<c:forEach var="a" begin="1" end="10" step="1">
	<c:out value="${a}" />&nbsp;&nbsp;&nbsp;
</c:forEach>
<br>
<c:forEach var="aa" begin="1" end="10" step="1">
	3 * <c:out value="${aa }" />&nbsp; <c:out value="${3 * aa }"></c:out><br>
</c:forEach>
<br>
header 정보출력(객체는 items,일종의향상된for)
<c:forEach var="h" items="${headerValues }">
	<c:out value="${h.key }"></c:out><br>
	
	<c:forEach var="i" items="${h.value }">
	<c:out value="${i}"></c:out>
	</c:forEach>
	
</c:forEach>
map류 자료출력
<%
HashMap map = new HashMap();
map.put("name", "헝길동");
map.put("today", new Date());
%>
<c:set var="m" value="<%=map %>"></c:set>
<c:forEach var="i" items="${m}">
	${i.key } : ${i.value }<br>
</c:forEach>

<br>배열자료출력
<c:set var="arr" value="<%=new int[]{1,2,3,4,5} %>"></c:set>
<c:forEach var="i" items="${arr }" begin="2" step="2">
	${i}<br>
</c:forEach>
<hr>
문자열 분할<br>
<c:forTokens var="aniaml" items="holes,tiger,dog,cat,lion" delims=",">
	동물 : <c:out value="${aniaml }"></c:out>
</c:forTokens>
<br>
<c:forTokens var="city" items="서울미만잡,잡,잡,잡*잡*잡" delims=",*" varStatus="cou">
	도시 : <c:out value="${cou.count}) ${city }"></c:out>
</c:forTokens>
<br>
** 숫자 및 날짜 서식 **
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
숫자 : <fmt:formatNumber value="123456.789" type="number"/><br>
숫자 : <fmt:formatNumber value="123456.789" type="currency"/><br>
숫자 : <fmt:formatNumber value="123456.789" type="percent"/><br>
숫자 : <fmt:formatNumber value="12.789" pattern="#,##0.0"/><br>
숫자 : <fmt:formatNumber value="12.789" pattern="0,000.0"/><br>
<br>
<c:set var="nalja" value="<%=new Date() %>"></c:set>
<c:out value="${nalja }"></c:out>
<br>
날짜 : <fmt:formatDate value="${nalja }" type="date"/><br>
날짜 : <fmt:formatDate value="${nalja }" type="time"/><br>
날짜 : <fmt:formatDate value="${nalja }" type="both"/><br>
날짜 : <fmt:formatDate value="${nalja }" type="both" dateStyle="full" timeStyle="full"/><br>
날짜 : <fmt:formatDate value="${nalja }" type="both" pattern="yyyy년 MM월 dd일"/><br>
<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0">
      <source src="Driving.mp4">
</video>
</body>
</html>