<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 확인</title>
</head>
<body>
	<center>
		<form method="post" action="">
			<table border="1" width="400">
				<tr>
					<th colspan="2">
						<h1>회원확인</h1>
						<h5>회원확인을 위해 아이디와 비밀번호를 입력해주세요</h5>
					</th>
				</tr>
				<tr>
					<th>아&nbsp;이&nbsp;디</th>
					<td><input type="text" name="u_id"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="text" name="u_pw"></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="제출하기"></th>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>