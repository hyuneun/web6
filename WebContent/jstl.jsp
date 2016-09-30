<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
													<!--접두어(변수?)  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
jstl 연습(el과 함꺠쓴다)
** 변수 **<br>
<c:set var="irum" value="미쿡인" scope="page" />
<c:out value="${irum }" /><br>
<c:set var="name">헝길덩</c:set>
<c:out value="${name }"></c:out>
<br>
<c:set var="aa" value="${header['User-Agent'] }" scope="page"></c:set>

aa 변수는 : <c:out value="${aa }"></c:out>
<br>
<c:set var="su1" value="${10 }" />
<c:set var="su2">20.5</c:set>
합은 : ${su1 + su2 }
<p>
조건판단문<br>
<c:set var="bb" value="${'star' }"/>
<c:if test="${bb == 'star'}">
if 연습 : bb값은 <c:out value="${bb }"/>
</c:if>

<c:if test="${bb == 'moon'}">
배고파
</c:if>

<br>조건판단문
<c:choose>
	<c:when test="${bb == 'moon' }">
		<c:out value="${bb }"></c:out>
		달
	</c:when>
	
	<c:when test="${bb == 'star' }">
		<c:out value="${bb }"></c:out>
		썬
	</c:when>
	
	<c:otherwise>
		뭐냐?
	</c:otherwise>
</c:choose>

<c:choose>
	<c:when test="${empty param.ir }">
		<form>
			이름 : <input type="text" name="ir">
			<input type="submit">
		</form>
	</c:when>
	
	<c:when test="${param.ir =='admin' }">
		<a href="http://www.naver.com">관리자</a>
	</c:when>
	
	<c:otherwise>
		환영합니다 <c:out value="${param.ir }" /> 님
	</c:otherwise>
</c:choose>
</body>
</html>