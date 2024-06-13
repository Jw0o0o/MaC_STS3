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
                <a href="#">의료</a>
                <a href="#">날씨</a>
                <a href="#">화성1</a>
                <a href="#">화성2</a>
                <a href="#">화성3</a>
                <a href="#">화성4</a>
                <a href="#">화성5</a>
                <a href="#">화성6</a>
                <a href="#">화성7</a>
                <a href="#">화성8</a>
                <a href="#">화성9</a>
                <a href="#">화성10</a>
                <a href="#">화성11</a>
                <a href="#">화성12</a>
                <a href="#">화성13</a>
                <a href="#">화성14</a>
                <a href="#">화성15</a>
                <a href="#">화성16</a>
            </div>
        </div>
        <div class="board-content">
            <h2 class="text-xl font-bold mb-4">Most_PopularBattleMasterBoard (top 10)</h2>
            <div class="item">
                <div class="icon">★</div>
                <div class="title">(연구글) 쾌적한 특신 4오의 뇌명각빌드</div>
                <div class="count">[47]</div>
            </div>
            <div class="item">
                <div class="icon">★</div>
                <div class="title">2악자 초심배마에 대한 정보글(장문)</div>
                <div class="count">[46]</div>
            </div>
            <div class="item">
                <div class="icon">★</div>
                <div class="title">(개편된) 극딜 환각4오의 세팅 정리</div>
                <div class="count">[229]</div>
            </div>
            <div class="item">
                <div class="icon">★</div>
                <div class="title">고신6악몽 초심가이드_240303</div>
                <div class="count">[9]</div>
            </div>
            <div class="item">
                <div class="icon">★</div>
                <div class="title">고신속 환각3오의 내공연소x 뇌명각</div>
                <div class="count">[76]</div>
            </div>
            <div class="item">
                <div class="icon">★</div>
                <div class="title">초심 이것저것 써본 결과 2악자기 제일...</div>
                <div class="count">[183]</div>
            </div>
            <div class="item">
                <div class="icon">★</div>
                <div class="title">쌩 뉴비용 환각3오의 세팅 가이드(영희...</div>
                <div class="count">[6]</div>
            </div>
            <div class="item">
                <div class="icon">★</div>
                <div class="title">배틀마스터의 세팅을 알아보자(*개편 후...</div>
                <div class="count">[237]</div>
            </div>
            <div class="item">
                <div class="icon">★</div>
                <div class="title">환각 뇌명3오의 배마 입문 가이드(고신...</div>
                <div class="count">[97]</div>
            </div>
            <div class="item">
                <div class="icon">★</div>
                <div class="title">(연구글) 특치사멸 바쿠사이클 4오의 (극...</div>
                <div class="count">[97]</div>
            </div>
        </div>
        <div class="board-footer">
            <a href="#">의료 공공데이터 더보기+</a>
        </div>
    </div>
</body>
</html>