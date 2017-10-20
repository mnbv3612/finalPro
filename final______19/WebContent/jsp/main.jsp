<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<%
String vMsg=request.getParameter("msg");
if(vMsg != null){
	%>
	<script>
	alert("<%=vMsg%>")
	</script>
	<%
}
%>
</head>
<body>
<div class="contents">
<div class="slideshow-container_ws">
<div class="mySlides_ws fade_ws"> 
  <img src="./img/menu1.JPG" style="margin-left : 50px;" class="img_ws">  
</div>
<div class="mySlides_ws fade_ws">
  <img src="./img/menu2.JPG"  style="margin-left : 50px;" class="img_ws">
</div>
<div class="mySlides_ws fade_ws"> 
  <img src="./img/menu3.JPG" style="margin-left : 50px;" class="img_ws"> 
</div>
<a class="prev_ws" onclick="plusSlides(-1)">&#10094;</a>
<a class="next_ws" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>
<div style="text-align:center">
  <span class="dot_ws" onclick="currentSlide(1)"></span> 
  <span class="dot_ws" onclick="currentSlide(2)"></span> 
  <span class="dot_ws" onclick="currentSlide(3)"></span> 
</div>

<a href="index.jsp?category=jsp/event.jsp"><img src="./img/menu1.JPG" class="img_ws" style="margin-left:105px;"></a>
<a href="index.jsp?category=jsp/recipe_share.jsp"><img src="./img/menu2.JPG" class="img_ws" style="margin-left:105px;"></a>
<a href="index.jsp?category=jsp/pizza_cooking.jsp"><img src="./img/menu3.JPG" class="img_ws" style="margin-left:105px;"></a>
<script src="./js/pizzaScript.js"></script>
</div>
</body>
</html> 
