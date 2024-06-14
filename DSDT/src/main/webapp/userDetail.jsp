<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 상세 정보</title>
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
    .profile-table {
        background-color: #ffffff;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 600px;
        border: 2px solid #dee2e6;
        margin-bottom: 20px;
    }
    .profile-table th, .profile-table td {
        padding: 15px;
        text-align: center;
    }
    .profile-table th {
        background-color: #e9ecef;
        border-bottom: 2px solid #dee2e6;
    }
    .profile-table td {
        background-color: #ffffff;
    }
    .profile-table img {
        border-radius: 50%;
    }
    .profile-header {
        background-color: #e9ecef;
        border-bottom: 2px solid #dee2e6;
    }
    h1 {
        margin: 0;
        padding: 20px;
        background-color: #e9ecef;
        border-bottom: 2px solid #dee2e6;
    }
    .link-container {
        display: flex;
        justify-content: space-between;
        width: 100%;
        max-width: 600px;
    }
    .link-container a {
        text-decoration: none;
        color: #495057;
        font-weight: bold;
        padding: 10px 20px;
        border: 2px solid #dee2e6;
        border-radius: 5px;
        transition: background-color 0.3s, color 0.3s;
    }
    .link-container a:hover {
        background-color: #dee2e6;
        color: #495057;
    }
    .link-container .link1 {
        margin-left: 33%;
    }
    .link-container .link2 {
        margin-right: 33%;
    }

    @media (max-width: 600px) {
        .link-container {
            flex-direction: column;
            align-items: center;
        }
        .link-container .link1, .link-container .link2 {
            margin: 10px 0;
        }
    }
</style>
</head>
<body>
    <div class="container">
        <table class="profile-table table table-bordered">
            <tr>
                <th colspan="2">
                    <h1>회원 상세 정보</h1>
                </th>
            </tr>
            <tr class="profile-header">
                <th colspan="2">
                    <img src="C:/Users/jskyb/Desktop/jsp연습/8984011223_f.jpg" width="200" height="200" border="0" alt="">
                    <br>${user.u_nickname}&nbsp;&nbsp;${user.u_role}
                </th>
            </tr>
            <tr>
                <td>아이디</td>
                <td>&nbsp;${user.u_id}</td>
            </tr>
            <tr>
                <td>회원등급</td>
                <td>&nbsp;${user.u_grade}</td>
            </tr>
            <tr>
                <td>성별</td>
                <td>&nbsp;${user.u_gender}</td>
            </tr>
            <tr>
                <td>주소</td>
                <td>&nbsp;${user.u_addr}</td>
            </tr>
            <tr>
                <td>연락처</td>
                <td>&nbsp;${user.u_phone}</td>
            </tr>
        </table>
        <div class="link-container">
            <a href="userModify.jsp" class="link1 btn btn-primary">회원정보수정</a>
            <a href="userDelete.jsp" class="link2 btn btn-danger">회원탈퇴</a>
        </div>
    </div>
</body>
</html>
