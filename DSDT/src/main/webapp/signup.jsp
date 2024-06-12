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
            width: 150px;
            height: auto;
        }
        .error-message {
            color: red;
            font-size: 0.875rem;
            display: none;
        }
        .disabled-button {
            background-color: gray;
            cursor: not-allowed;
        }
        .enabled-button {
            background-color: green;
            cursor: pointer;
        }
    </style>
    <script>
    	// 1. ��ȭ��ȣ �Է½� "-"�ڵ� �߰�
        function formatPhoneNumber(input) {
            const numbers = input.value.replace(/\D/g, '');
            const phoneNumber = numbers.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
            input.value = phoneNumber;
        }
    	// 2. �̿��� ���� ���ϸ� �� �Ѿ����
    	function toggleSubmitButton() {
            const submitBtn = document.getElementById('submitBtn');
            const terms = document.getElementById('terms');
            if (terms.checked && isIdAvailable) {
                submitBtn.disabled = false;
                submitBtn.classList.remove('disabled-button');
                submitBtn.classList.add('enabled-button');
            } else {
                submitBtn.disabled = true;
                submitBtn.classList.remove('enabled-button');
                submitBtn.classList.add('disabled-button');
            }
        }
    	// 3. �ߺ�üũ
    	var isIdAvailable = false;
    	
        function checkDuplicateId() {
            var userId = document.getElementsByName("u_id")[0].value;
            if(userId === "") {
                alert("���̵� �Է����ּ���.");
                return;
            }

            var xhr = new XMLHttpRequest();
            xhr.open("POST", "checkId.do", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

            xhr.onreadystatechange = function() {
                if(xhr.readyState == 4 && xhr.status == 200) {
                    var response = xhr.responseText;
                    if(response == "available") {
                        alert("��� ������ ���̵��Դϴ�.");
                        isIdAvailable = true;
                    } else {
                        alert("�̹� ��� ���� ���̵��Դϴ�.");
                        isIdAvailable = false;
                    }
                    toggleSubmitButton();
                }
            };
            xhr.send("u_id=" + encodeURIComponent(userId));
        }
        
        // 3-2. id�ߺ�üũ & �����ġ Ȯ���ؼ�, ��� ���ϸ� �ƿ� �� ����X
        function validateForm(event) {
        	if (!isIdAvailable) {
                alert("���̵� �ߺ� üũ�� ������� ���߽��ϴ�. �ٸ� ���̵� ������ּ���.");
                event.preventDefault();
                return;
            }
        	
            const password = document.getElementById('u_pw').value;
            const confirmPassword = document.getElementById('u_pwc').value;
            const errorMessage = document.getElementById('passwordError');

            if (password !== confirmPassword) {
                errorMessage.style.display = 'block';
                event.preventDefault();
            } else {
                errorMessage.style.display = 'none';
            }
        }
        
        // 4. ���, ���Ȯ�� ��ġ ���� "�ǽð�" Ȯ��
        function checkPasswordMatch() {
            const password = document.getElementById('u_pw').value;
            const confirmPassword = document.getElementById('u_pwc').value;
            const errorMessage = document.getElementById('passwordError');

            if (password !== confirmPassword) {
                errorMessage.style.display = 'block';
            } else {
                errorMessage.style.display = 'none';
            }
        }

        document.addEventListener('DOMContentLoaded', function() {
            document.getElementById('u_pwc').addEventListener('input', checkPasswordMatch);
            document.getElementById('terms').addEventListener('change', toggleSubmitButton);
            toggleSubmitButton(); // �ʱ� ���¿��� ��ư ��Ȱ��ȭ ����
        });
    	
    </script>
</head>

<body class="bg-gray-100 flex items-center justify-center min-h-screen">
	<form method="post" action="signup.do" target="_self" onsubmit="validateForm(event)">
        <div class="logo">
        	<img src="./resources/images/dsdtLogo2.png" alt="����Ʈ �ΰ�" />
    	</div>
        <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md">
            <h2 class="text-2xl font-bold mb-6">ȸ������</h2>
            <div class="mb-4">
                <label class="block text-gray-700 mb-2">���� ����</label>
                <div>
                    <input type="radio" id="u_role_individual" name="u_role" value="individual" checked>
                    <label for="u_role_individual" class="mr-4">����</label>
                    <input type="radio" id="u_role_company" name="u_role" value="company">
                    <label for="u_role_company">���</label>
                </div>
            </div>
            <div class="mb-4">
                <label for="u_id" class="block text-gray-700">���̵�</label>
                <div class="flex">
                    <input type="text" id="u_id" name="u_id" placeholder="ID�� �Է����ּ���" class="flex-grow px-3 py-2 border border-gray-300 rounded-l-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                    <button type="button" name="idconfirm" class="px-4 py-2 bg-blue-500 text-white rounded-r-lg" onclick="checkDuplicateId()">�ߺ�üũ</button>
                </div>
            </div>
            <div class="mb-4">
                <label for="u_pw" class="block text-gray-700">��й�ȣ</label>
                <input type="password" id="u_pw" name="u_pw" placeholder="��й�ȣ�� �Է����ּ���" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <div class="mb-4">
                <label for="u_pwc" class="block text-gray-700">��й�ȣ Ȯ��</label>
                <input type="password" id="u_pwc" name="u_pwc" placeholder="��й�ȣ�� �ٽ� �Է����ּ���" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                <p id="passwordError" class="error-message">��й�ȣ�� ��ġ���� �ʽ��ϴ�.</p>
            </div>
            <div class="mb-4">
                <label for="u_nickname" class="block text-gray-700">�̸�</label>
                <input type="text" id="u_nickname" name="u_nickname" placeholder="�̸��� �Է����ּ���" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <div class="mb-4">
                <label for="u_phone" class="block text-gray-700">��ȭ��ȣ</label>
                <input type="text" id="u_phone" name="u_phone" placeholder="��ȭ��ȣ�� �Է����ּ���" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" oninput="formatPhoneNumber(this)">
            </div>
            <div class="mb-4 flex items-center">
                <input type="checkbox" id="terms" class="mr-2" onchange="toggleSubmitButton()">
                <label for="terms" class="text-gray-700 text-sm">ȸ�����԰� ���ÿ� ����������޹�ħ �� �̿����� �����ϰ� �˴ϴ�.</label>
            </div>
            <button type="submit" id="submitBtn" class="w-full text-white py-2 rounded-lg disabled-button" disabled>ȸ������</button>
        </div>
    </form>
</body>
</html>