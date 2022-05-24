<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<h1>글 상세보기</h1>
	글 제목 : ${dto.b_no} <br>
	글 제목 : ${dto.b_title} <br>
	글 내용 : ${dto.b_content} <br>
	작성자 : ${dto.b_writer} <br>
	작성일 : ${dto.b_regDate} <br>
	
	
		<a href="/boardUpdate?b_no=${dto.b_no}">수정하기</a>
		<a href="/boardDelete?b_no=${dto.b_no}">삭제하기</a>
	
	
	
	<a href="/boardList">목록으로</a>
</body>
</html>