<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>
<style type="text/css">
	a { text-decoration: none;}
	table{width: 600px; border-collapse:collapse; text-align: left;}
	table,th,td{border: 1px solid black; padding: 3px}
	div{width: 600px; margin:auto; text-align: center;}
</style>
<script type="text/javascript">
	function mypage_go(f) {
		const pwd = "${pwd}" ;
		const pwd2 = f.pwd.value;
		if (pwd== pwd2) {
			f.action="/01_servlet/User" ;
			console.log(pwd2);
			f.submit();
		}else {
			console.log(pwd);
			alert("비밀번호틀렸습니다") ;
			f.pwd.value = "" ;
			f.pwd.focus();
			return ;
		}
		
	}


</script>
</head>
<body>
	<div>
		<h2>비밀번호 확인</h2>
		<hr />
		<form method="post">
			<table>
				<tr>
					<td bgcolor="#99ccff">비밀번호</td>
					<td><input type="password" name="pwd" size ="20"/></td>
				</tr>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="button" value="확인" onclick="mypage_go(this.form)" />
							<input type="hidden" name="cmd" value="mypage">
							<input type="hidden" name="id" value="${id }">
							
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>