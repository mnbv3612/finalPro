<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	String category = request.getParameter("cate");
	if (category == null) {
		category = "free_board.jsp";
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="contents">
	<h1 class="title_gm"> 게시판 </h1>
	<div class="boardbg_gm">
		<div class="a_gm">
			<%@ include file="board_left.jsp"%>
		</div>
		<jsp:include page="<%=category%>"></jsp:include>
	
	</div>
</div>
</body>
</html>