<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
		<c:if test="${mvo != null}">
			<h2>${mvo.name }님, 환영합니다.</h2>
	<form action="/01_servlet/User" method="post">
		<input type="submit" value="마이페이지">
		<input type="hidden" name="cmd" value="pwd_chk">
		<input type="hidden" name="pwd" value="${mvo.pwd}">
		<input type="hidden" name="id" value="${mvo.id}">
	</form>
		</c:if>
		<c:if test="${mvo == null}">
	<form action="/01_servlet/User" method="post">
		<input type="submit" value="로그인">
		<input type="hidden" name="cmd" value="login">
	</form>
	<form action="/01_servlet/User" method="post">
		<input type="submit" value="회원가입">
		<input type="hidden" name="cmd" value="signup">
	</form>
		<input type="hidden" name="cmd" value="index">
		</c:if>
	<form action="/01_servlet/Guest" >
		<input type="submit" value="guestbook">
		<input type="hidden" name="cmd" value="list">
	</form>
		
</body>
</html>