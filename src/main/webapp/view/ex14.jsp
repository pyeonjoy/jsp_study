<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 계산하기</title>
<script type="text/javascript">
	function send_go(f) {
		let name = f.name.value;
		//f.elements = form의 요소들
		for (let i = 0; i < f.elements.length; i++) {
			//국어를 제외 시키자
			//if (i === 2) continue;
			if (f.elements[i].value === '') {
				alert(f.elements[i].name+"을 입력하세요");
				f.elements[i].focus();
				return;				
			}
		}
		f.submit();
		/* if (name === '') {
				alert() =("이름을 입력하세요");
				f.name.focus();
				return;} */
	}
</script>
</head>
<body>
	<form action="/01_servlet/Ex14" method="post">
		<fieldset>
			<legend>성적 입력</legend>
			<p><label for="name">이름:  </label><input type="text" name="name" required></p>
			<p><label for="name">국어:  </label><input type="number" name="kor" required></p>
			<p><label for="name">영어:  </label><input type="number" name="eng" required></p>
			<p><label for="name">수학:  </label><input type="number" name="math" required></p>
			<input type="hidden" name="cmd" value="1">
			<input type="button" value="결과보기" onclick="send_go(this.form)">
			<input type="reset" value="취소">
		</fieldset>
	</form>
	<hr>
	<form action="/01_servlet/Ex14" method="post">
		<fieldset>
			<legend>성적 입력</legend>
			<p>취미
			<input type="checkbox" name="hobby" value="운동">운동
			<input type="checkbox" name="hobby" value="게임">게임
			<input type="checkbox" name="hobby" value="영화">영화
			<input type="checkbox" name="hobby" value="독서">독서
			</p>
			<input type="hidden" name="cmd" value="2">
			<input type="submit" value="결과보기">
		</fieldset>
	</form>
</body>
</html>