<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ict.db.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<%--
		JSTL: JSP Standard Tag Library
		1. 라이브러리 다운 받아서 해당 프로젝트에 넣기(tomcat.apatch.org)
		2. 다운 받은 4개의 파일을 WEB-INF안에 Lib폴더를 만들어서 넣어주자
		3. jstl을 사용하기 위해서는 지시어중 taglib 지시어 선언하고 사용한다.
			(보통 page 지시어 밑) 
		코어: c
	    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		포멧팅: 	fmt
		    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	 	4. 사용법: 코어 => <c:사용명령어>, 포멧팅 =><fmt:사용명령어>
	 	
	 	1.변수 생성 및 데이터 저장: 디폴트는 pageContext에 저장
	 	변수 생성 (set) 
	 	<c:set var="변수명" value="데이터"></c:set>
	 	--%>
	 	<c:set var="str" value="Hello JSTL"/>
	 	<%-- 변수값 출력(out) <c:out value="출력 할 데이터 또는 EL사용"></c:out>
	 	=> <c:out value="str"></c:out> : 문자열 출력
	 	=> <c:out value="${str}"></c:out>: 변수 값 출력
	 	${str }: 변수 값 출력
	 	--%>
	 	<c:out value="str"></c:out><br>
	 	<c:out value="${str}"></c:out><br>
	 	${str }
	 	<hr>
	 	<%--변수 삭제(remove) --%>
	 	<c:remove var="str"/> <!-- remove 할때는 str 변수를 뜻함. 문자열 아님 -->
	 	<c:out value="${str}"></c:out><br>
	 	${str }
	 	<hr>
	 	
	 	
	 	
	 	
	 	<%-- if문: else 가 없다. 조건식이 참일때만 실행한다.
	 	<c:if test="조건식(관계연산, 비교연산, 논리연산 ->EL방식으로 작성" var="변수">
	 		조건식이 참일때 실행할 문장
	 	</c:if>
	 	 --%>
	 	<c:if test="${4>3 }">
	 		<h2>결과: 참이라서 실행</h2>
	 	</c:if>
	 	<hr>
	 	<c:if test="${4<3 }">
	 		<h2>결과: 거짓이라서 실행 안됨</h2>
	 	</c:if>
	 	
	 	<%-- avg가 80 이상이면 합격 	 	--%>
	 	<c:set var="avg" value="87"/>
	 	<%-- 	<c:if test="${ avg>=80}"> --%>
	 		<c:if test="${ avg ge 80}">
	 			<h3>결과: 합격</h3>
	 		</c:if>
	 	<hr>
	 	<%-- if문은 else가 없어서 불편하다.
	 	대신 choose문 사용한다.
	 	switch문과 비슷하다.
	 	<c:choose>
				<c:when test="조건식(관계연산, 비교연산, 논리연산 -> EL방식으로 작성)">참일때 실행</c:when>	 		
				<c:when test="조건식(관계연산, 비교연산, 논리연산 -> EL방식으로 작성)">참일때 실행</c:when>	 		
				<c:when test="조건식(관계연산, 비교연산, 논리연산 -> EL방식으로 작성)">참일때 실행</c:when>	 		
				<c:otherwise>위 조건이 맞지 않았을때 (즉 나머지)</c:otherwise>	 		
	 		<!--<c:otherwise>  switch case에서 defalt 역할을 한다.-->
	 	</c:choose>
	 	--%>
	 	<%-- avg가 80이상이면 합격 아니면 불합격 --%>
	 	<c:set var="avg" value="77"/>
	 	<c:choose>
				<c:when test="${avg ge 80}">
				<h3>결과: 합격</h3>
				</c:when>	 		
				<c:otherwise>
				<h3>결과: 불합격</h3>
	 		<%--<c:otherwise>  switch case에서 defalt 역할을 한다.--%>
				</c:otherwise>	 		
	 	</c:choose>
	 	<%-- avg2가 90이상이면 A학점 80이상이면 B학점, 70이상이면 C학점, 아니면 F학점
	 		정수는 정수와 비교, 실수는 실수와 비교
	 	 --%>
	 	<c:set var="avg2" value="89.5"/>
	 	<c:choose>
				<c:when test="${avg2 >= 90.0}"><h3>결과: A학점</h3></c:when>	 		
				<c:when test="${avg2 >= 80.0}"><h3>결과: B학점</h3></c:when>	 		
				<c:when test="${avg2 >= 70.0}"><h3>결과: C학점</h3></c:when>	 		
				<c:otherwise><h3>결과: F학점</h3></c:otherwise>	 		
	 	</c:choose>


	<%--for문
	1.일반적인 for문
	<c:forEach begin="시작값" end="끝값" step="증가/감소" var="for문 안에서 사용할 변수" varStatus="변수 상태값">
		${변수}
	</c:forEach>
		
	2.개선된 for문
	<c:set var="arr_1" value="둘리, 도우너, 마이콜, 희동이, 고길동"/>
	<c:forEach var="사용할 변수이름" items="배열이나  리스트를 EL형식으로">
	</c:forEach>
	
	 --%>
	<h2>10~20출력</h2><!-- end 마지막 숫자 포함. -->
	<c:forEach begin="10" end="20" step="1" var="k" varStatus="vs">
		<h3>${k }: ${vs.index }: ${vs.count }: ${vs.first }: ${vs.last }</h3>>
	</c:forEach>
	<h2>10~20 짝수만출력</h2>
	<c:forEach begin="10" end="20" step="1" var="k" varStatus="vs">
		<c:if test="${k%2 eq 0 }">
		<h3>${k }: ${vs.index }: ${vs.count }: ${vs.first }: ${vs.last }</h3>>
		</c:if>
	</c:forEach>

	<%-- 배열 생성 items:배열이나 arraylist담을때 사용--%>
	<c:set var="arr_1" value="둘리, 도우너, 마이콜, 희동이, 고길동"/>
	<c:forEach var="k" items="${arr_1 }">
		   <h3>${k }님,  환영합니다.</h3>
	</c:forEach>

	<%//모델에서 ArrayList왔다고 치자.
	VO vo1 = new VO("2", "도우너", "2", "경기"); 
	VO vo2 = new VO("3", "마이콜", "34", "대구"); 
	VO vo3 = new VO("4", "희동이", "15", "대전"); 
	
	//강제로DB에서 처리한것처럼 VO에 정보를 넣어보자
	List<VO> list = new ArrayList<VO>();
	list.add(vo1);
	list.add(vo2);
	list.add(vo3);
	request.setAttribute("list", list);
	%>
 
	<c:forEach var="k" items="${list}">
	<li>${k.idx}:   ${k.name}:   ${k.age}:  ${k.addr}</li>
	</c:forEach>
<hr>
	<%--반복해서 나누기
	<c:forTokens items="${배열이나 컬렉션}" delims="구분자" var="변수명"></c:forTokens>--%>
	<c:set var="arr_2" value="둘리, 도우너, 마이콜/홍길동,장길산,임꺽정/태권브이,마징가,짱가"/>
	<c:forTokens items="${arr_2}" delims="/" var="k">
		<h3>${k }님</h3>
	</c:forTokens>
	<hr>
	<c:set var="arr_2" value="둘리, 도우너, 마이콜/홍길동,장길산,임꺽정/태권브이,마징가,짱가"/>
	<c:forTokens items="${arr_2}" delims="," var="k">
		<h3>${k }님</h3>
	</c:forTokens>
	<hr>
	<c:set var="arr_2" value="둘리, 도우너, 마이콜/홍길동,장길산,임꺽정/태권브이,마징가,짱가"/>
	<c:forTokens items="${arr_2}" delims=", /" var="k">
		<h3>${k }님</h3>
	</c:forTokens>
	<hr>
	<%--	redirect: 페이지 이동(request,response는 새로 만들어진다. --%>
	<%-- 	<c:redirect url="ex07_EL.jsp"></c:redirect> --%>
	
	<%-- iframe,imclude와 같다. --%>
	<c:import url="ex07_EL.jsp"/>
	
</body>
</html>

















