<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 탈퇴</title>
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
        max-width: 400px;
        padding: 20px;
        border: 2px solid #dee2e6;
    }
    h1 {
        margin-bottom: 20px;
        padding-bottom: 10px;
        border-bottom: 2px solid #dee2e6;
    }
    .form-control {
        margin-bottom: 10px;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #dee2e6;
        font-size: 1rem;
    }
    .btn-danger {
        width: 100%;
        padding: 10px;
        font-size: 1rem;
        border-radius: 5px;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h1><img src="./resources/images/dsdtLogo2.png" width="50" height="50" border="0" alt="">회원 탈퇴</h1>
            <form action="userDelete.jsp" method="post">
                <div class="mb-3">
                    <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디" required>
                </div>
                <div class="mb-3">
                    <input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="비밀번호" required>
                </div>
                <button type="submit" class="btn btn-danger">탈퇴</button>
            </form>
        </div>
    </div>
</body>
</html>
