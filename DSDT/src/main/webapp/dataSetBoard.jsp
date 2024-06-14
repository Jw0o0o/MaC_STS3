<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Battle Master Board</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
        }
        .board-header {
            background-color: #1a202c;
            color: white;
        }
        .board-header a {
            color: white;
            padding: 0.5rem 1rem;
            display: inline-block;
        }
        .board-header a:hover {
            background-color: #2d3748;
        }
        .board-content {
            background-color: #f7fafc;
            padding: 1rem;
        }
        .board-content .item {
            display: flex;
            align-items: center;
            padding: 0.5rem 0;
            border-bottom: 1px solid #e2e8f0;
        }
        .board-content .item .icon {
            margin-right: 0.5rem;
        }
        .board-content .item .title {
            flex-grow: 1;
        }
        .board-content .item .count {
            color: #e53e3e;
        }
        .board-footer {
            text-align: right;
            padding: 1rem;
            background-color: #edf2f7;
        }
        .board-footer a {
            color: #3182ce;
            font-weight: bold;
        }
    </style>
</head>
<body class="bg-gray-100">
    <div class="container mx-auto mt-8">
        <div class="board-header flex justify-between items-center p-4">
            <div>
                <a href="#">�Ƿ�</a>
                <a href="#">����</a>
                <a href="#">ȭ��1</a>
                <a href="#">ȭ��2</a>
                <a href="#">ȭ��3</a>
                <a href="#">ȭ��4</a>
                <a href="#">ȭ��5</a>
                <a href="#">ȭ��6</a>
                <a href="#">ȭ��7</a>
                <a href="#">ȭ��8</a>
                <a href="#">ȭ��9</a>
                <a href="#">ȭ��10</a>
                <a href="#">ȭ��11</a>
                <a href="#">ȭ��12</a>
                <a href="#">ȭ��13</a>
                <a href="#">ȭ��14</a>
                <a href="#">ȭ��15</a>
                <a href="#">ȭ��16</a>
            </div>
        </div>
        <div class="board-content">
            <h2 class="text-xl font-bold mb-4">Most_PopularBattleMasterBoard (top 10)</h2>
            <div class="item">
                <div class="icon">��</div>
                <div class="title">(������) ������ Ư�� 4���� ��������</div>
                <div class="count">[47]</div>
            </div>
            <div class="item">
                <div class="icon">��</div>
                <div class="title">2���� �ʽɹ踶�� ���� ������(�幮)</div>
                <div class="count">[46]</div>
            </div>
            <div class="item">
                <div class="icon">��</div>
                <div class="title">(�����) �ص� ȯ��4���� ���� ����</div>
                <div class="count">[229]</div>
            </div>
            <div class="item">
                <div class="icon">��</div>
                <div class="title">���6�Ǹ� �ʽɰ��̵�_240303</div>
                <div class="count">[9]</div>
            </div>
            <div class="item">
                <div class="icon">��</div>
                <div class="title">��ż� ȯ��3���� ��������x ����</div>
                <div class="count">[76]</div>
            </div>
            <div class="item">
                <div class="icon">��</div>
                <div class="title">�ʽ� �̰����� �ẻ ��� 2���ڱ� ����...</div>
                <div class="count">[183]</div>
            </div>
            <div class="item">
                <div class="icon">��</div>
                <div class="title">�� ����� ȯ��3���� ���� ���̵�(����...</div>
                <div class="count">[6]</div>
            </div>
            <div class="item">
                <div class="icon">��</div>
                <div class="title">��Ʋ�������� ������ �˾ƺ���(*���� ��...</div>
                <div class="count">[237]</div>
            </div>
            <div class="item">
                <div class="icon">��</div>
                <div class="title">ȯ�� ����3���� �踶 �Թ� ���̵�(���...</div>
                <div class="count">[97]</div>
            </div>
            <div class="item">
                <div class="icon">��</div>
                <div class="title">(������) Ưġ��� �������Ŭ 4���� (��...</div>
                <div class="count">[97]</div>
            </div>
        </div>
        <div class="board-footer">
            <a href="#">�Ƿ� ���������� ������+</a>
        </div>
    </div>
</body>
</html>