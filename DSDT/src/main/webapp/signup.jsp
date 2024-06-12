<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="EUC-KR">
    <title>회원 가입</title>
    <style>
        table {
            margin: 0 auto;
        }
        .logo {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>

<body>
	<form method="post" action="signup.do" target="_self">
    	<div class="logo">
        	<img src="./resources/dsdtLogo.png" alt="사이트 로고" />
    	</div>
        <table border="0" width="650">
            <tr>
                <th colspan="2">
                    <h1>회원가입</h1>
                </th>
            </tr>
            <tr>
                <td>유저 유형</td>
                <td>
                    <input type="radio" name="u_role" value="individual" checked> 개인
                    <input type="radio" name="u_role" value="company"> 기업
                </td>
            </tr>
            <tr>
                <td>아이디</td>
                <td>
                    <input type="text" name="u_id" size="10" max="20">
                    <input type="button" value="중복확인" name="idconfirm" onclick="checkDuplicateId()">
                    <!-- <input type="button" value="중복확인" name="idconfirm" onclick=""> -->
                </td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="u_pw" size="10" max="20"></td>
            </tr>
            <tr>
                <td>비밀번호 확인</td>
                <td><input type="password" name="u_pwc" size="10" max="20"></td>
            </tr>
            <tr>
                <td width="150">이름</td>
                <td><input type="text" name="u_nickname" size="10"></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td>
                    <div class="inline-inputs">
                        <select name="tel_1" size="1">
                            <option value="02">02</option>
                            <option value="010" selected>010</option>
                            <option value="011">011</option>
                            <option value="016">016</option>
                            <option value="017">017</option>
                            <option value="018">018</option>
                            <option value="019">019</option>
                        </select>
                        -
                        <input type="text" name="tel_2" size="6" max="10">
                        -
                        <input type="text" name="tel_3" size="6" max="10">
                        <!-- Hidden field to store the combined phone number -->
                        <input type="hidden" name="u_phone">
                    </div>
                </td>
            </tr>
            <tr>
            <tr>
                <th colspan="2">
                    <input type="submit" value="가입하기"> <input type="reset" value="다시작성">
                </th>
            </tr>
        </table>
    </form>
</body>

</html>
