<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
a {
	text-decoration: none;
}

table {
	width: 600px;
	border-collapse: collapse;
	text-align: left;
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
<script type="text/javascript">
	function login_go(f) {
		f.action = "/01_servlet/User";
		f.submit();

	}
</script>
</head>
<body>
	<div>
		<h2>로그인</h2>
		<hr />
		<p>
			[<a href="/01_servlet/User?cmd=index">메인화면으로 이동</a>]
		</p>
		<form method="post">
			<table>
				<tr>
					<td bgcolor="#99ccff">아이디</td>
					<td><input type="text" name="id" size="20" value="${mvo.id }"/></td>
				</tr>
				<tr>
					<td bgcolor="#99ccff">비밀번호</td>
					<td><input type="password" name="pwd" size="20" value="${mvo.pwd }"/></td>
				</tr>
				<tr>
				<tfoot>
					<tr>
						<td colspan="2"><input type="hidden" name="cmd"
							value="login_ok"> <input type="button" value="로그인"
							onclick="login_go(this.form)" /></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>