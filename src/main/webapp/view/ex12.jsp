<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘날짜 구하기, 운세구하기, 계산기</title>
<style type="text/css">
fieldset{
width: 600px;}
</style>
</head>
<body>
	<h2>HTML을 활용한 서버(서블릿)에게 정보 보내기(form)</h2>
<form action = "/01_servlet/Ex12" method="post">
     <input type="submit" value="오늘 날짜 구하기">
     <input type="hidden" name="cmd" value="1">
</form>
     <hr>

<form action = "/01_servlet/Ex12">
     <input type="submit" value="오늘 운세 구하기">
     <input type="hidden" name="cmd" value="2">
</form>
     <hr>

	<form action = "/01_servlet/Ex12">
     <input type="hidden" name="cmd" value="3">
     <fieldset>
     	<legend>계산기</legend>
     <p>수1 : <input type="number" name="s1" required></p>
     <p>수2 : <input type="number" name="s2" required></p>
	<p>연산자 :
     	<input type="radio"  name="op" value="+" checked>+
     	<input type="radio"  name="op" value="-">-
     	<input type="radio"  name="op" value="*">*
     	<input type="radio"  name="op" value="/">/ </p>

     <input type="submit" value="결과보기">
     </fieldset>
	</form>
</body>
</html>