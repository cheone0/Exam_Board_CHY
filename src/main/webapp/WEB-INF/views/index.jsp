<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sample Project 대문</title>
</head>
<body>

<c:if test="${not empty sessionScope.m_id}">

	${sessionScope.m_id} 님 환영합니다.
<a href="/logout">로그아웃</a>

<br>

<a href="/boardList">글목록 보러가기</a>

</c:if>

<c:if test="${empty sessionScope.m_id}">

	<h2>로그인</h2>
	<form action="/login" method="post">
		아이디 : <input type="text" name="m_id"><br>
		비밀번호 : <input type="password" name="m_pw">
	<input type="submit" value="로그인">
	</form>

</c:if>
	
	<a href="/memberInsert">회원등록하기</a>
	<a href="/memberList">회원보러가기</a><br>
	
	
<script type="text/javascript">
	
<c:if test="${msg==false}">
	alert('로그인 실패');
</c:if>
</script>
</body>
</html>