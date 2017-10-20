<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.jsp</title>
<%
	String category = request.getParameter("category");//여기서 카테고리는 jsp/블라블라/.jsp 처리를 해준 값이 controller 에서 넘어온다.
	String vMsg=request.getParameter("msg"); //controller에서 넘어온 msg를 받는다.
	if (category == null) {//category 값이 null 즉, 인덱스를 바로 실행시켰을때 메인으로 가게 만든다.
		category = "jsp/main.jsp";
	}else{//category값이 controller에서 넘어오면 처리해주는 양식
		if(vMsg!=null){
		category=category+"?msg="+URLDecoder.decode(vMsg, "utf-8");	
		}
	}
%>
</head>
<body>
	<%@ include file="jsp/top.jsp"%>
	<div class="allContent">
	<aside>
	<%@include file="jsp/aside.jsp"%>
	</aside>
	<div id="wrapper">
	<section>
	<jsp:include page="<%=category%>"></jsp:include> 
	</section>
	
	</div>
	</div>
	<%@ include file="jsp/bottom.jsp"%>
	
	
</body>
</html>