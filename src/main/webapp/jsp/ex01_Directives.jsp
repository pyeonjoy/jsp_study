<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지시어: Directives</title>
</head>
<body>
<!--  html주석: 소스보기에서 보인다. ${} 오류. -->
<%-- jsp 주석: 소스보기에서 보이지 않는다.--%>
<%--
	지시어(Directive): JSP파일의 속성을 기술하는곳이다.
								   컨테이너(웹컨테이너=tomcat)에게 해당 파일을 어떻게 처리해야 하는지
								   전달하는 내용을 담고있다.
		<%@ page %> : 해당 페이지를 톰캣이 처리할때 필요한 정보를 기술하는 부분
	<%@ include %>: 해당 JSP파일 내에 다른 HTML이나 JSP파일을 삽입 할 수 있도록 도와주는 기능을 하는 지시어.
									HTML의 Iframe과 비슷하다.
    	<%@ taglib %>: jsp기능을 확장하기 위해 만들어진 라이브러리를
    								 해당 페이지에서 사용할 수 있도록 도와 주는 기능을 하는 지시어
    						
    1. page 지시어 속성들
    	-language: 스크립트 코드에서 사용하는 언어 지정
    	-contentType: 해당 페이지의 문서타입과 문자셋 지정(캐릭터 인코딩)
   		 	--인코딩(암호화, 부호화): 정보 형태를 변환
    		--디코딩 (복호화): 인코딩으로 변경된 정보를 원래 대로 되돌리는 것.
    	-pageEncoding: 해당 페이지를 전세계가 볼 수 있도록 UTF-8로 변환해서 처리하자.
    	-session: 세션(저장공간)사용여부(기본:true)
    	-buffer: 출력에 사용되는 임시저장공간(기본:8kb)
    	-autoFlush: 출력 버퍼가 다 차지 않아도 바로 출력 시켜줌(기본: true)
    	-errorPage: 해당 페이지에서 오류가 발생하면 오류를 처리할 페이지를 지정
    	-isErrorPage: 해당 페이지가 오류를 처리하는 페이지 이면 true를 지정한다, 아니면 false
		 
	2.include 지시어 속성들
		- <%@ include file="삽일할 파일 위치와 이름"%>
		**include는 지시어를 사용하는 방법과 액션태그를 사용하는 방법 두가지가 있다.
	
	3. taglib: 해당 페이지에서 사용할 태그 라이브러리 지정
	 나중에jstl할때 필요(jstl이 있어야 반복문 처리를 할 수 있다.)
 --%>
</body>
</html>


















