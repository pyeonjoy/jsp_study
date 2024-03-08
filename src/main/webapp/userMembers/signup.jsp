<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
	a { text-decoration: none;}
	table{width: 600px; border-collapse:collapse; text-align: left;}
	table,th,td{border: 1px solid black; padding: 3px}
	div{width: 600px; margin:auto; text-align: center;}
</style>
<script type="text/javascript">
		function signup_go(f) {
			f.action = "/01_servlet/User"
			f.submit();
		}
</script>
</head>
<body>
	<div>
		<h2>회원가입</h2>
		<hr />
		<p>[<a href="/01_servlet/User?cmd=index">메인화면으로 이동</a>]</p>
		<form method="post">
			<table>
				<tr>
					<td bgcolor="#99ccff">아이디</td>
					<td><input type="text" name="id" size ="20"/></td>
				</tr>
				<tr>
					<td bgcolor="#99ccff">비밀번호</td>
					<td><input type="password" name="pwd" size ="20"/></td>
				</tr>
				<tr>
					<td bgcolor="#99ccff">이름</td>
					<td><input type="text" name="name" size ="20"/></td>
				</tr>
				<tr>
					<td bgcolor="#99ccff">이메일</td>
					<td><input type="text" name="email" size ="20"/></td>
				</tr>
				<tr>
					<td bgcolor="#99ccff">주소</td>
					<td><input type="text" name="addr" size ="20"/></td>
				</tr>
				<tr>
					<td bgcolor="#99ccff">연락처</td>
					<td><input type="text" name="phone" size ="20"/></td>
				</tr>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="hidden" name="cmd" value="signup_ok">
							<input type="button" value="가입완료" onclick="signup_go(this.form)" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>