<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex13_res01</title>
</head>
<body>
	<h1>결과보기</h1>
	<!-- command01(model)에서 저장한 결과를 불러오자 -->
	<h2>
		<ul style="list-style-type: disc;">
  	<!--  배열-->
  	<li>&#x1f349; ${hobby}&#x1f349; </li>
  	<!-- 객체, Object-->
  	<li>&#x1f344;${vo} &#x1f344;</li>
  	<!-- 객체, list-->
  	<li>&#x1f355; ${list}&#x1f355;</li>
	</ul>

</body>
</html>