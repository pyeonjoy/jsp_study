<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML을 활용한 서버(서블릿)에게 정보 보내기(form)</title>
<style type="text/css">
	fieldset{
	width: 300px;
	}
</style>
</head>
<body>
	<h2>HTML을 활용한 서버(서블릿)에게 정보 보내기(form)</h2>
	<form action = "/01_servlet/Ex07" method="post">
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










