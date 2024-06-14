<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        :root {
            --primary-color: #a0e5a0; /* 연한 녹색 */
            --secondary-color: #018b8b; /* 짙은 청록색 */
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
            <h1 class="text-2xl font-bold">의료 데이터 게시판</h1>
        </div>
        <div class="bg-white shadow-md rounded-b-lg">
            <div class="tab flex items-center p-4">
                <div>
                    <a href="#" class="font-bold">HOT 의료 데이터</a>
                </div>
                <div class="ml-auto mr-auto">
                    <a href="#" class="font-bold">최신 의료 데이터</a>
                </div>
                <div class="invisible">
                    <a href="#" class="font-bold">빈 공간</a>
                </div>
            </div>
            <div class="grid grid-cols-2 gap-4 p-4">
                <div>
                    <ul class="list-disc list-inside">
                        <li><a href="#" class="text-blue-600">이제 워로드 본캐라고 불내는 사람 없겠네 [35]</a></li>
                        <li><a href="#" class="text-blue-600">진리탑에 워캐가 단분은 이유 [26]</a></li>
                        <li><a href="#" class="text-blue-600">워로드 조각 역락대 [16]</a></li>
                        <li><a href="#" class="text-blue-600">고기캐로 33333 4 하다. [13]</a></li>
                        <li><a href="#" class="text-blue-600">드디어 본아니게 생작각 조져지는거 같은데 [8]</a></li>
                        <li><a href="#" class="text-blue-600">워로드 남들 바로 호전문로 가볼까? [14]</a></li>
                    </ul>
                </div>
                <div>
                    <ul class="list-disc list-inside">
                        <li><a href="#" class="text-blue-600">공식 추천 고기로드</a></li>
                        <li><a href="#" class="text-blue-600">워로드 고기</a></li>
                        <li><a href="#" class="text-blue-600">워로드 방격캐릭터 전대</a></li>
                        <li><a href="#" class="text-blue-600">진짜 고통한거 기념 예능용 H</a></li>
                        <li><a href="#" class="text-blue-600">카운 초보자용 (각인 상단)</a></li>
                        <li><a href="#" class="text-blue-600">132123 H</a></li>
                    </ul>
                </div>
            </div>
            <table class="min-w-full bg-white">
                <thead class="table-header">
                    <tr>
                        <th class="py-2 px-4">번호</th>
                        <th class="py-2 px-4">제목</th>
                        <th class="py-2 px-4">글쓴이</th>
                        <th class="py-2 px-4">등록일</th>
                        <th class="py-2 px-4">조회</th>
                        <th class="py-2 px-4">추천</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="table-row">
                        <td class="py-2 px-4 text-red-500">공지</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">[정보] (24-05-14수정)고기로드의 기본 공략 [193]</a></td>
                        <td class="py-2 px-4">본진</td>
                        <td class="py-2 px-4">11-12</td>
                        <td class="py-2 px-4">478,243</td>
                        <td class="py-2 px-4">132</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4 text-red-500">공지</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">[정보] [230118] 워로드 실체 무력화 표 [13]</a></td>
                        <td class="py-2 px-4">Hako</td>
                        <td class="py-2 px-4">01-27</td>
                        <td class="py-2 px-4">46,387</td>
                        <td class="py-2 px-4">22</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4 text-red-500">공지</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">[정보] (23-10-17 패치 수정중) 주류 튜페 워로드 FAQ... [145]</a></td>
                        <td class="py-2 px-4">일반이</td>
                        <td class="py-2 px-4">01-30</td>
                        <td class="py-2 px-4">217,392</td>
                        <td class="py-2 px-4">62</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4 text-red-500">공지</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">고기캐로들 실험 중간(10/18 밸런스 업데이트) [123]</a></td>
                        <td class="py-2 px-4">본진</td>
                        <td class="py-2 px-4">01-31</td>
                        <td class="py-2 px-4">199,479</td>
                        <td class="py-2 px-4">62</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">177033</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">복귀해서 3년 넘게 사야하나요 기대했던 시즌 바뀌... [8]</a></td>
                        <td class="py-2 px-4">망상장인</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">194</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">177032</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">와로드 통돌 9개들 [3]</a></td>
                        <td class="py-2 px-4">동주각</td>
                        <td class="py-2 px-4">17:35</td>
                        <td class="py-2 px-4">137</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176980</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">14개들 길을 잃었습니다 [13]</a></td>
                        <td class="py-2 px-4">진병</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">820</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176979</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">잡담] 와로드 각인 질문 [5]</a></td>
                        <td class="py-2 px-4">트드버드</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">600</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176978</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">잡담] 초보는 무슨 세팅 어떻게 하나요? [3]</a></td>
                        <td class="py-2 px-4">슬아아크</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">565</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176977</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">잡담] 1620와로드 초보자가 다시돌리면 [3]</a></td>
                        <td class="py-2 px-4">유한한꽃</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">480</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176976</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">이제 고기로드 각인들 [3]</a></td>
                        <td class="py-2 px-4">평균길나나라</td>
                        <td class="py-2 px-4">06-10</td>
                        <td class="py-2 px-4">947</td>
                        <td class="py-2 px-4">0</td>
                    </tr>
                    <tr class="table-row">
                        <td class="py-2 px-4">176975</td>
                        <td class="py-2 px-4"><a href="#" class="text-blue-600">드디어 본아니게 생작각 조져지는거 같은데 [8]</a></td>
                        <td class="py-2 px-4">이름중</td>
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
                <a href="#" class="px-2">다음</a>
            </div>
            
            <div class="flex justify-end p-4">
                <div class="flex items-center">
                    <select class="border border-gray-300 rounded p-2 mr-2">
                        <option>제목</option>
                        <option>글쓴이</option>
                        <option>내용</option>
                    </select>
                    <input type="text" class="border border-gray-300 rounded p-2" placeholder="검색어를 입력하세요">
                    <button class="bg-gray-800 text-white rounded p-2 ml-2">검색</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
