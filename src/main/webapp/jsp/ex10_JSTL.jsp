<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL: 포맷팅(fmt): 숫자와 날짜 포매팅</title>
</head>
<body>
	<h2>천단위 숫자 처리와 숫자만 받기</h2>
	<h3>
		<li><fmt:formatNumber value="123456.5789"></fmt:formatNumber></li>
		<%-- 
		문자가 들어가면 오류
		<li><fmt:formatNumber value="aaaa123456.5789"></fmt:formatNumber></li>
		<li><fmt:formatNumber value="123456.a5789"></fmt:formatNumber></li>
		 --%>	
 </h3>
 <hr>
	<h2>숫자만 받기: 숫자 가능, 숫자와 문자일때는 처음부터 숫자 까지만 인식.</h2>
	<h3>
		<li><fmt:parseNumber value="123456.5789"/></li>
		<li><fmt:parseNumber value="123456aa.5aa789"/></li>
<%-- 		<li><fmt:parseNumber value="aaaa123456789"/></li> --%>
 </h3>
 <hr>
	<h2>정수만 구하기(반올림 처리, 소수점 첫째짜리 까지 구하기)</h2>
	<h3>
		<li><fmt:formatNumber  value="123456.4789" pattern="#,##.#" /></li>
		<li><fmt:formatNumber  value="123456.5789" pattern="#,##" /></li>
		<li><fmt:formatNumber  value="1234565789" pattern="#,##.#" /></li>
		<li><fmt:formatNumber  value="1234565789" pattern="#,##.0" /></li>
  </h3>
  <hr>
	<h2>#과0의 차이점</h2>
	<h3>
		<li><fmt:formatNumber  value="127" pattern="#,###" /></li>
		<li><fmt:formatNumber  value="127" pattern="#,###.#" /></li>
		<li><fmt:formatNumber  value="127" pattern="0,000" /></li>
		<li><fmt:formatNumber  value="127" pattern="0,000.0" /></li>
  </h3>
  <hr>
	<h2>현재 운영체제에 맞는 화폐 단위 표시(반올림)</h2>
	<h3>
		<li><fmt:formatNumber  value="123456.4789" type="currency"/></li>
		<li><fmt:formatNumber  value="123456.5789" type="currency"/></li>
		<li><fmt:formatNumber  value="1234565789" type="currency"/></li>
		<li><fmt:formatNumber  value="1112444445" type="currency"/></li>
  </h3>
  <hr>
	<h2>%퍼센트 구하기(value * 100 + %)</h2>
	<h3>
		<li><fmt:formatNumber  value="12" type="percent"/></li>
		<li><fmt:formatNumber  value="0.12" type="percent"/></li>
  </h3>
  <hr>
	<h2>오늘 날짜 구하기</h2>
	<%-- 자바의 객체 생성과 같은 --%>
	<jsp:useBean id="now" class="java.util.Date"/>
	<h3>
		<li>오늘 날짜: ${now} </li>	
		<li><fmt:formatDate value="${now}" dateStyle="short" /> </li>	
		<li><fmt:formatDate value="${now}" dateStyle="medium" /> </li>	
		<li><fmt:formatDate value="${now}" dateStyle="long"/> </li>	
		<li><fmt:formatDate value="${now}" dateStyle="full" /> </li>	 

		<li>시간 </li>	
		<li><fmt:formatDate value="${now}" type="time" timeStyle="short" /> </li>	
		<li><fmt:formatDate value="${now}" type="time"  timeStyle="medium" /> </li>	
		<li><fmt:formatDate value="${now}" type="time"  timeStyle="long"/> </li>	
		<li><fmt:formatDate value="${now}" type="time"  timeStyle="full" /> </li>	

		<li>둘다</li>	
		<li><fmt:formatDate value="${now}" type="both" timeStyle="short" timeStyle="short" /> </li>	
		<li><fmt:formatDate value="${now}" type="both"  timeStyle="medium"   timeStyle="medium" /> </li>	
		<li><fmt:formatDate value="${now}" type="both"  timeStyle="long"  timeStyle="long"/> </li>	
		<li><fmt:formatDate value="${now}" type="both"  timeStyle="full"  timeStyle="full" /> </li>	
  	 </h3>
  <hr>
</body>
</html>

















