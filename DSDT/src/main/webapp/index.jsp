<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainPage</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/index_styles.css">
</head>
<body>

    <div id="page">

        <header>
        	<div id="logo">
        		<img src="<%=request.getContextPath()%>/images/logo.png" alt="Logo">
        	</div>
        	
            <div id="top_menu">
                <a href="#">LOGIN</a> |
                <a href="#">LOGOUT</a>
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
   
    </div>


	<section class="service">
		<div class="container">
			<div class="img">
				<img src="<%=request.getContextPath()%>/images/data.png" alt="">
			</div>
		
		<div class="text">
			<h1> DATA STARFIELD DREAM TEAM </h1>
			<br>
			<p> 뭐 여기다가 우리 페이지 소개 써도 나쁘지 않을 듯 합니다.... 뭐 one-window 어쩌구 이런거..? </p>
		</div>
	</div>
	</section>
    
    
<!-- 6월 12일 연습 -->

<!--     <div id="sidebar"> 
    	<h3>Widget Content</h3> 
    	<p>여기가 위젯 자리.</p> 
    	<p>위젯위젯</p> 
    </div> -->
    
    

<!-- 검색창 -->	
	<form id="MainSearch" action="" onsubmit="return false;" autocomplete="off">
        <input title="검색어를 입력하세요." type="text" class="inp" name="query" style="ime-mode:active" id="topLayerQueryInput" onkeydown="if (event.keyCode == 13) {searchBoard();}">
        <button onclick="MainSearch();return false;" type="button" class="btn">검색</button>
    </form>
    
    
 	<div id="board_area">
 
      <h2>인기프로젝트목록</h2>
      <table class="list-table">
      <thead>
          <tr>
              <th width="70">번호</th>
              <th width="500">제목</th>
              <th width="120">글쓴이</th>
              <th width="100">작성일</th>
              <th width="100">조회수</th>
            </tr>
        </thead>
    	</table>
    </div>

</body>
</html>
