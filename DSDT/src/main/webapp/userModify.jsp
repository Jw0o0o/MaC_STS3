<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ���� ����</title>
<link href="bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa;
        color: #495057;
        font-family: Arial, sans-serif;
    }
    .container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        padding: 20px;
        box-sizing: border-box;
    }
    .form-container {
        background-color: #ffffff;
        border-radius: 15px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 600px;
        padding: 20px;
        border: 2px solid #dee2e6;
    }
    .profile-header {
        text-align: center;
        margin-bottom: 20px;
    }
    .profile-header img {
        border-radius: 50%;
        margin-bottom: 10px;
    }
    h1 {
        margin-bottom: 20px;
        padding-bottom: 10px;
        border-bottom: 2px solid #dee2e6;
    }
    table {
        width: 100%;
    }
    .form-label {
        text-align: right;
        padding-right: 10px;
        vertical-align: middle;
        white-space: nowrap;
    }
    td {
        vertical-align: middle;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        font-size: 1rem;
        border-radius: 5px;
        background-color: #007bff;
        color: #fff;
        border: none;
        transition: background-color 0.3s;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <form method="post" action="">
                <table class="profile-table table table-bordered">
                    <tr>
                        <th colspan="2">
                            <h1>ȸ�� ���� ����</h1>
                        </th>
                    </tr>
                    <tr class="profile-header">
                        <th colspan="2">
                            <img src="C:/Users/jskyb/Desktop/jsp����/8984011223_f.jpg" width="200" height="200" border="0" alt="">
                            <br><a href="">������ ���� ����</a>
                        </th>
                    </tr>
                    <tr>
                        <td class="form-label">���̵�</td>
                        <td>&nbsp;${user.u_id}</td>
                    </tr>
                    <tr>
                        <td class="form-label">ȸ������</td>
                        <td>&nbsp;${user.u_role}</td>
                    </tr>
                    <tr>
                        <td class="form-label">ȸ�����</td>
                        <td>&nbsp;${user.u_grade}</td>
                    </tr>
                    <tr>
                        <td class="form-label">��й�ȣ</td>
                        <td><input type="text" class="form-control" name="u_pw"></td>
                    </tr>
                    <tr>
                        <td class="form-label">��й�ȣȮ��</td>
                        <td><input type="text" class="form-control" name="u_pwc"></td>
                    </tr>
                    <tr>
                        <td class="form-label">����</td>
                        <td><input type="text" class="form-control" name="u_nickname"></td>
                    </tr>
                    <tr>
                        <td class="form-label">����</td>
                        <td>
                            <input type="radio" id="��" name="u_gender" value="��">
                            <label for="��">��</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" id="��" name="u_gender" value="��">
                            <label for="��">��</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="form-label">�ּ�</td>
                        <td><input type="text" class="form-control" name="u_addr"></td>
                    </tr>
                    <tr>
                        <td class="form-label">����ó</td>
                        <td><input type="text" class="form-control" name="u_phone"></td>
                    </tr>
                </table>
                <input type="submit" value="�����ϱ�">
            </form>
        </div>
    </div>
</body>
</html>
