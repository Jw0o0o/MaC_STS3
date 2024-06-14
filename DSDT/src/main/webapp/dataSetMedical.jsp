<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�Խ���</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        :root {
            --primary-color: #a0e5a0; /* ���� ��� */
            --secondary-color: #018b8b; /* £�� û�ϻ� */
        }

        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: var(--primary-color);
        }
        .header {
            background-color: var(--secondary-color);
            color: white;
        }
        .tab {
            border-bottom: 2px solid var(--secondary-color);
        }
        .tab a {
            color: var(--secondary-color);
        }
        .tab a:hover {
            text-decoration: underline;
        }
        .table-header {
            background-color: #e0f7e0;
        }
        .table-row:nth-child(even) {
            background-color: #f3fff3;
        }
        .table-row:hover {
            background-color: #ccffcc;
        }
        .pagination a {
            color: var(--secondary-color);
        }
        .pagination a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body class="bg-white text-gray-800">
    <div class="container mx-auto p-4">
        <div class="header p-4 rounded-t-lg">
            <h1 class="text-2xl font-bold">�Ƿ� ������ �Խ���</h1>
        </div>
        <div class="bg-white shadow-md rounded-b-lg">
            <div class="tab flex items-center p-4">
                <div>
                    <a href="#" class="font-bold">HOT �Ƿ� ������</a>
                </div>
                <div class="ml-auto mr-auto">
                    <a href="#" class="font-bold">�ֽ� �Ƿ� ������</a>
                </div>
                <div class="invisible">
                    <a href="#" class="font-bold">�� ����</a>
                </div>
            </div>
            <div class="grid grid-cols-2 gap-4 p-4">
                <div>
                    <ul class="list-disc list-inside">
                        <li><a href="#" class="text-blue-600">���� ���ε� ��ĳ��� �ҳ��� ��� ���ڳ� [35]</a></li>
                        <li><a href="#" class="text-blue-600">����ž�� ��ĳ�� �ܺ��� ���� [26]</a></li>
                        <li><a href="#" class="text-blue-600">���ε� ���� ������ [16]</a></li>
                        <li><a href="#" class="text-blue-600">���ĳ�� 33333 4 �ϴ�. [13]</a></li>
                        <li><a href="#" class="text-blue-600">���� ���ƴϰ� ���۰� �������°� ������ [8]</a></li>
                        <li><a href="#" class="text-blue-600">���ε� ���� �ٷ� ȣ������ ������? [14]</a></li>
                    </ul>
                </div>
                <div>
                    <ul class="list-disc list-inside">
                        <li><a href="#" class="text-blue-600">���� ��õ ���ε�</a></li>
                        <li><a href="#" class="text-blue-600">���ε� ���</a></li>
                        <li><a href="#" class="text-blue-600">���ε� ���ĳ���� ����</a></li>
                        <li><a href="#" class="text-blue-600">��¥ �����Ѱ� ��� ���ɿ� H</a></li>
                        <li><a href="#" class="text-blue-600">ī�� �ʺ��ڿ� (���� ���)</a></li>
                        <li><a href="#" class="text-blue-600">132123 H</a></li>
                    </ul>
                </div>
            </div>
            <table class="min-w-full bg-white">
                <thead class="table-header">
                    <tr>
                        <th class="py-2 px-4">��ȣ</th>
                        <th class="py-2 px-4">����</th>
                        <th class="py-2 px-4">�۾���</th>
                        <th class="py-2 px-4">�����</th>
                        <th class="py-2 px-4">��ȸ</th>
                        <th class="py-2 px-4">��õ</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="table-row">
                        <td class="py-2 px-4 text-red-500">����</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">[����] (24-05-14����)���ε��� �⺻ ���� [193]</a></td>
                        <td class="py-2 px-4">����</td>
                        <td class="py-2 px-4">11-12</td>
                        <td class="py-2 px-4">478,243</td>
                        <td class="py-2 px-4">132</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4 text-red-500">����</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">[����] [230118] ���ε� ��ü ����ȭ ǥ [13]</a></td>
                        <td class="py-2 px-4">Hako</td>
                        <td class="py-2 px-4">01-27</td>
                        <td class="py-2 px-4">46,387</td>
                        <td class="py-2 px-4">22</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4 text-red-500">����</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">[����] (23-10-17 ��ġ ������) �ַ� Ʃ�� ���ε� FAQ... [145]</a></td>
                        <td class="py-2 px-4">�Ϲ���</td>
                        <td class="py-2 px-4">01-30</td>
                        <td class="py-2 px-4">217,392</td>
                        <td class="py-2 px-4">62</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4 text-red-500">����</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">���ĳ�ε� ���� �߰�(10/18 �뷱�� ������Ʈ) [123]</a></td>
                        <td class="py-2 px-4">����</td>
                        <td class="py-2 px-4">01-31</td>
                        <td class="py-2 px-4">199,479</td>
                        <td class="py-2 px-4">62</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">177033</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">�����ؼ� 3�� �Ѱ� ����ϳ��� ����ߴ� ���� �ٲ�... [8]</a></td>
                        <td class="py-2 px-4">��������</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">194</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">177032</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">�ͷε� �뵹 9���� [3]</a></td>
                        <td class="py-2 px-4">���ְ�</td>
                        <td class="py-2 px-4">17:35</td>
                        <td class="py-2 px-4">137</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176980</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">14���� ���� �Ҿ����ϴ� [13]</a></td>
                        <td class="py-2 px-4">����</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">820</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176979</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">���] �ͷε� ���� ���� [5]</a></td>
                        <td class="py-2 px-4">Ʈ�����</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">600</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176978</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">���] �ʺ��� ���� ���� ��� �ϳ���? [3]</a></td>
                        <td class="py-2 px-4">���ƾ�ũ</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">565</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176977</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">���] 1620�ͷε� �ʺ��ڰ� �ٽõ����� [3]</a></td>
                        <td class="py-2 px-4">�����Ѳ�</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">480</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176976</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">���� ���ε� ���ε� [3]</a></td>
                        <td class="py-2 px-4">��ձ泪����</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">947</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176975</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">���� ���ƴϰ� ���۰� �������°� ������ [8]</a></td>
                        <td class="py-2 px-4">�̸���</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">2,081</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                </tbody>
            </table>
            <div class="pagination flex justify-center p-4">
                <a href="#" class="px-2">1</a>
                <a href="#" class="px-2">2</a>
                <a href="#" class="px-2">3</a>
                <a href="#" class="px-2">4</a>
                <a href="#" class="px-2">5</a>
                <a href="#" class="px-2">6</a>
                <a href="#" class="px-2">7</a>
                <a href="#" class="px-2">8</a>
                <a href="#" class="px-2">9</a>
                <a href="#" class="px-2">10</a>
                <a href="#" class="px-2">����</a>
            </div>
            
            <div class="flex justify-end p-4">
                <div class="flex items-center">
                    <select class="border border-gray-300 rounded p-2 mr-2">
                        <option>����</option>
                        <option>�۾���</option>
                        <option>����</option>
                    </select>
                    <input type="text" class="border border-gray-300 rounded p-2" placeholder="�˻�� �Է��ϼ���">
                    <button class="bg-gray-800 text-white rounded p-2 ml-2">�˻�</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
