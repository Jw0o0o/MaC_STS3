<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원상세정보</title>
</head>
<body>
	<center>

		<table border="1" width="500">
			
			<tr>
				<th colspan="2">
					<h1>회원 상세정보</h1>
				</th>
			</tr>
			
			<tr>
				<th colspan="2"><img
					src="C:/Users/jskyb/Desktop/jsp연습/8984011223_f.jpg" width="200"
					height="200" border="0" alt=""><br>
					${user.u_nickname}&nbsp;&nbsp;${user.u_role}</th>
			</tr>
			
			<tr>
				<td align="center">아&nbsp;&nbsp;이&nbsp;&nbsp;디</td>
				<td>&nbsp;${user.u_id}</td>
			</tr>
			
			<tr>
				<td align="center">회원등급</td>
				<td>&nbsp;${user.u_grade}</td>
			</tr>
			
			<tr>
				<td align="center">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별</td>
				<td>&nbsp;${user.u_gender}</td>
			</tr>
			
			<tr>
				<td align="center">주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소</td>
				<td>&nbsp;${user.u_addr}</td>
			</tr>
			
			<tr>
				<td align="center">연&nbsp;&nbsp;락&nbsp;&nbsp;처</td>
				<td>&nbsp;${user.u_phone}</td>
			</tr>
			
			<tr>
				<td align="center">가입일자</td>
				<td>&nbsp;${user.u_createdat}</td>
			</tr>
			
		</table>
		
		<a href="">회원정보수정</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="">회원탈퇴</a>

	</center>
</body>
</html>