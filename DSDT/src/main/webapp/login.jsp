<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose/dtd">

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^2.0/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to bottom right, #f2f6fc, #c7e3f0, #eae6f0);
        }
        .logo {
            text-align: center;
            margin-top: 20px;
            width: 100px;
            height: auto;
        }
    </style>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
	
    <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-sm">
    	<div class="logo">
            <img src="./resources/images/dsdtLogo2.png" alt="사이트 로고" />
        </div>
        <h2 class="text-2xl font-bold text-purple-600 mb-6">Login</h2>
        <form action="login.do" method="post">
            <div class="mb-4">
                <label for="email" class="sr-only">Email</label>
                <input type="email" id="email" name="u_id" placeholder="Email" value="${userVO.u_id}" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-purple-600">
            </div>
            <div class="mb-4">
                <label for="password" class="sr-only">Password</label>
                <input type="password" id="password" name="u_pw" value="${userVO.u_pw}" placeholder="Password" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-purple-600">
            </div>
            <div class="flex items-center mb-6">
                <input type="checkbox" id="remember" class="mr-2">
                <label for="remember" class="text-gray-600">아이디 저장하기</label>
            </div>
            <button type="submit" class="w-full bg-purple-600 text-white py-2 rounded-lg font-bold hover:bg-purple-700 transition duration-200">Login</button>
        </form>
        <div class="mt-4 text-center">
            <a href="signup.jsp" class="block w-full bg-white border border-gray-300 text-gray-700 py-2 rounded-lg font-bold hover:bg-gray-100 transition duration-200">회원가입</a>
        </div>
    </div>
</body>
</html>


