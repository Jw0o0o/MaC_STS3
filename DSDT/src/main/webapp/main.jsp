<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main_Page</title>
<link rel="stylesheet" type="text/css"
    href="<%=request.getContextPath()%>/resources/css/main_styles.css">
<style>
    html, body {
        margin: 0;
        padding: 0;
        height: 100%;
        overflow: hidden;
    }
    #page {
        display: flex;
        flex-direction: column;
        height: 100%;
    }
    header {
        flex: 0 0 auto;
        background-color: #f1f1f1;
        padding: 10px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    nav ul {
        list-style: none;
        padding: 0;
        display: flex;
        gap: 10px;
    }
    nav ul li {
        display: inline;
    }
    .service, .container-wrapper {
        flex: 1 1 auto;
        overflow-y: auto;
    }
    .service {
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px;
    }
    .container-wrapper {
        display: flex;
        justify-content: space-between;
        padding: 20px;
    }
    .form-container, #board_area, #public_main, #widget {
        flex: 1;
        margin: 0 10px;
    }
    .form-container {
        max-width: 300px;
    }
    .form-container .search {
        display: flex;
        gap: 5px;
    }
    .db_btn_area {
        display: flex;
        gap: 5px;
        flex-wrap: wrap;
    }
</style>
</head>
<body>

    <div id="page">

        <header>
            <div id="logo">
                <a href="#"> <img
                    src="<%=request.getContextPath()%>/images/logo.png" alt="Logo">
                </a>
            </div>

            <div id="top_menu">
                <a href="#">LOGIN</a> | <a href="#">LOGOUT</a>
            </div>

            <nav>
                <ul>
                    <li><a href="#">자유게시판</a></li>
                    <li><a href="#">프로젝트게시판</a></li>
                    <li><a href="#">공공DB모음집</a></li>
                    <li><a href="#">자료실</a></li>
                    <li><a href="#">공지사항</a></li>
                </ul>
            </nav>

        </header>

        <section class="service">
            <div class="container">
                <div class="img">
                    <img src="<%=request.getContextPath()%>/images/data.png" alt="">
                </div>

                <div class="text">
                    <h1>DATA STARFIELD DREAM TEAM</h1>
                    <br>
                    <p>뭐 여기다가 우리 페이지 소개 써도 나쁘지 않을 듯 합니다.... 뭐 one-window 어쩌구 이런거..?
                    </p>
                </div>
            </div>
        </section>

        <div class="container-wrapper">
            <div id="container">
                <div id="text">
                </div>

                <div class="form-container">
                    <form action="/search" method="get">
                        <p>통합검색</p>
                        <div class="search">
                            <input id="searchInput" type="text" placeholder="검색어 입력">
                            <button>
                                <img
                                    src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
                            </button>
                        </div>
                    </form>
                </div>

                <div id="board_area">
                    <a href="#">
                        <h2>인기프로젝트목록</h2>
                    </a>
                    <table class="list-table" border="1" cellpadding="0" cellspacing="0"
                        width="100%">
                        <tr>
                            <th width="10%">순위</th>
                            <th width="30%">제목</th>
                            <th width="20%">글쓴이</th>
                            <th width="20%">작성일</th>
                            <th width="10%">조회수</th>
                        </tr>
                    </table>
                </div>

                <div id="public_main">
                    <a href="#">
                        <h2>분야별 공공데이터</h2>
                    </a>

                    <div class="db_btn_area" data-tab-length="26">
                        <a href="#">
                            <button type="button" data-link="1" class="btn db1">
                                <span class="db_txt">건강</span>
                            </button>
                        </a> 
                        <a href="#">
                            <button type="button" data-link="2" class="btn db2">
                                <span class="db_txt">날씨</span>
                            </button>
                        </a> 
                        <a href="#">
                            <button type="button" data-link="3" class="btn db3">
                                <span class="db_txt">범죄</span>
                            </button>
                        </a> 
                        <a href="#">
                            <button type="button" data-link="4" class="btn db4">
                                <span class="db_txt">의료</span>
                            </button>
                        </a> 
                        <a href="#">
                            <button type="button" data-link="5" class="btn db5">
                                <span class="db_txt">의료</span>
                            </button>
                        </a>
                    </div>

                    <table class="list-table" border="1" cellpadding="0" cellspacing="0"
                        width="100%">
                        <tr>
                            <th width="10%">번호</th>
                            <th width="40%">제목</th>
                            <th width="20%">글쓴이</th>
                            <th width="20%">작성일</th>
                            <th width="10%">조회수</th>
                        </tr>
                    </table>
                </div>
            </div>
            
            <div id="widget">
                <h2>위젯</h2>
                <p>여기에 위젯 넣기,,?</p>
            </div>
        </div>

    </div>

</body>
</html>
