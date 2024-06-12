<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="EUC-KR">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ȸ������</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
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
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <form method="post" action="signup.do" target="_self">
        <div class="logo">
        	<img src="./resources/dsdtLogo.png" alt="����Ʈ �ΰ�" />
    	</div>
        <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md">
            <h2 class="text-2xl font-bold mb-6">ȸ������</h2>
            <div class="mb-4">
                <tr>
                    <td>���� ����</td>
                    <td>
                        <input type="radio" id="u_role" value="individual" checked> ����
                        <input type="radio" id="u_role" value="company"> ���
                    </td>
                </tr>
            </div>
            <div class="mb-4">
                <label for="u_id" class="block text-gray-700">���̵�</label>
                <div class="flex">
                    <input type="text" id="u_id" placeholder="ID�� �Է����ּ���" class="flex-grow px-3 py-2 border border-gray-300 rounded-l-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                    <button type="button" class="px-4 py-2 bg-blue-500 text-white rounded-r-lg">�ߺ�üũ</button>
                </div>
            </div>
            <div class="mb-4">
                <label for="u_pw" class="block text-gray-700">��й�ȣ</label>
                <input type="text" id="u_pw" placeholder="��й�ȣ�� �Է����ּ���" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <div class="mb-4">
                <label for="u_pwc" class="block text-gray-700">��й�ȣ Ȯ��</label>
                <input type="text" id="u_pwc" placeholder="��й�ȣ�� �ٽ� �Է����ּ���" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <div class="mb-4">
                <label for="u_nickname" class="block text-gray-700">�̸�</label>
                <input type="text" id="u_nickname" placeholder="�̸��� �Է����ּ���" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <div class="mb-4">
                <label for="u_phone" class="block text-gray-700">��ȭ��ȣ</label>
                <input type="text" id="u_phone" placeholder="��ȭ��ȣ�� �Է����ּ���" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <div class="mb-4 flex items-center">
                <input type="checkbox" id="terms" class="mr-2">
                <label for="terms" class="text-gray-700 text-sm">ȸ�����԰� ���ÿ� ����������޹�ħ �� �̿����� �����ϰ� �˴ϴ�.</label>
            </div>
            <button type="submit" class="w-full bg-green-500 text-white py-2 rounded-lg">ȸ������</button>
        </div>
    </form>
</body>
</html>