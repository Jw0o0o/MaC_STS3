<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ��������</title>
</head>
<body>
	<center>

		<table border="1" width="500">
			
			<tr>
				<th colspan="2">
					<h1>ȸ�� ������</h1>
				</th>
			</tr>
			
			<tr>
				<th colspan="2"><img
					src="C:/Users/jskyb/Desktop/jsp����/8984011223_f.jpg" width="200"
					height="200" border="0" alt=""><br>
					${user.u_nickname}&nbsp;&nbsp;${user.u_role}</th>
			</tr>
			
			<tr>
				<td align="center">��&nbsp;&nbsp;��&nbsp;&nbsp;��</td>
				<td>&nbsp;${user.u_id}</td>
			</tr>
			
			<tr>
				<td align="center">ȸ�����</td>
				<td>&nbsp;${user.u_grade}</td>
			</tr>
			
			<tr>
				<td align="center">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</td>
				<td>&nbsp;${user.u_gender}</td>
			</tr>
			
			<tr>
				<td align="center">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</td>
				<td>&nbsp;${user.u_addr}</td>
			</tr>
			
			<tr>
				<td align="center">��&nbsp;&nbsp;��&nbsp;&nbsp;ó</td>
				<td>&nbsp;${user.u_phone}</td>
			</tr>
			
			<tr>
				<td align="center">��������</td>
				<td>&nbsp;${user.u_createdat}</td>
			</tr>
			
		</table>
		
		<a href="">ȸ����������</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="">ȸ��Ż��</a>

	</center>
</body>
</html>