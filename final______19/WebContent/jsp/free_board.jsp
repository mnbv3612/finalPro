<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" class="boardTB_gm">
	<caption><h3 style="color:gray;">자유 게시판</h3></caption>
		<tr class="boardTH_gm">
			<th style = "width: 70px;">번호</th>
			<th>제목</th>
			<th style = "width: 100px;">작성자</th>
			<th style = "width: 150px;">날짜</th>
		</tr>
	</table>
	<a href="index.jsp?category=jsp/board_index.jsp?cate=free_boardWrite.jsp">
		<input type="button" class="boardwritelist"  style="margin-right: 32px;" value="글쓰기 "></a>
	
	
	<!-- <div class="boardwritelist" style="margin-right: 50px;"> [ 목록 ]</div> <div class="boardwritelist">[ 글쓰기 ]</div> -->
</body>
</html>