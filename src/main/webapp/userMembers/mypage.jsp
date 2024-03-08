<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방 명 록</title>
<style type="text/css">
a {
	text-decoration: none;
}

table {
	width: 600px;
	border-collapse: collapse;
	text-align: center;
}

table, th, td {
	border: 1px solid black;
	padding: 3px
}

div {
	width: 600px;
	margin: auto;
	text-align: center;
}
</style>
</head>
<body>
	<div>
		<h2>마이페이지</h2>
		<hr />
		<form method="post">
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">이름</td>
					<td>${mvo.name}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">email</td>
					<td>${mvo.email}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">주소</td>
					<td>${mvo.addr}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">연락처</td>
					<td>${mvo.phone}</td>
				</tr>

				<tfoot>
					<tr align="center">
						<td colspan="2"><input type="hidden" name="idx"
							value="${mvo.idx}" /> <input type="button" value="수정" onclick="" />
						</td>
					</tr>

				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>