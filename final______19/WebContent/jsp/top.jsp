<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
String vUrl=request.getContextPath();
String vUrlCss=vUrl+"/css/";
String vUrlCon=vUrl+"/pizza.do";
%>
<link rel="stylesheet" type="text/css" href="<%=vUrlCss%>pizzaStyle.css?ver=6">
<title>Top.jsp</title>
<style>
.show{
display: block;
}
.dropdown-content a {
    float: none;
    color: black;
    padding: 8px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}
</style>
<script>
function dropdown(){
	document.getElementById("dropdown").classList.toggle("show");
}
function dropdown2(){
	document.getElementById("dropdown2").classList.toggle("show");
}
</script>
</head>
<body>
<header>
<div id="wrapper">
<div class="topBox3_yj">
<!-- 임의로 만든거임 나의 정보 -->
<a href="<%=vUrlCon%>?category=myPage"><input type="button" value="나의정보" class="topBox2_yj"/></a>
<!-- 임의로 만든거임 나의 레시피 -->
<a href="<%=vUrlCon%>?category=myRecipe"><input type="button" value="나의레시피" class="topBox2_yj"/></a>
<a href="#"><img src="<%=vUrl%>/img/logo.png"/></a>
<a href="<%=vUrlCon%>?category=login"><input type="button" value="로그인" class="topBox2_yj"/></a>
<a href="<%=vUrlCon%>?category=insert"><input type="button" value="회원가입" class="topBox2_yj"/></a>
</div>

<div class="topBox4_yj"><b>
<a href="<%=vUrlCon%>?category=pizza_cooking" class="topBox5_yj">피자만들기</a>
<a class="topBox5_yj" onmouseover="dropdown()" >소통</a>
<div class="dropdown-content" id="dropdown" style="left: 40%; top: 120px;">
<a href="<%=vUrlCon%>?category=board_index">자유게시판</a>
<a href="<%=vUrlCon%>?category=board_index.jsp?cate=recipe_share">레시피 공유 게시판</a>
</div>
<a class="topBox5_yj" onmouseover="dropdown2()" >고객센터</a>
<div class="dropdown-content" id="dropdown2" style="left: 55%; top: 120px;">
<a href="<%=vUrlCon%>?category=customer_index">FAQ</a>
<a href="<%=vUrlCon%>?category=customer_index.jsp?cate=QNA">QnA</a>
<a href="<%=vUrlCon%>?category=customer_index.jsp?cate=notice">공지사항</a>
</div>
<a href="<%=vUrlCon%>?category=event" class="topBox5_yj">이벤트</a></b>
</div>
</div>

</header>
</body>
</html>