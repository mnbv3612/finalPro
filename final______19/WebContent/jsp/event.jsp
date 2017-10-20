<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
    <head>   
   <meta charset="UTF-8">
<script>
var amon = ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"];
var aseason=["봄","여름","가을","겨울"];
var ajpg = ["./img/1d.jpg","./img/2d.jpg","../img/3d.jpg","../img/4d.jpg","../img/5d.jpg","../img/6d.jpg",
			 "../img/7d.jpg","../img/8d.jpg","../img/9d.jpg","./img/10d.jpg","../img/11d.jpg","../img/12d.jpg"];

function imgchg(){
	var da = new Date();
	
	document.getElementById("txt").innerHTML = amon[da.getMonth()];
	document.images.img.src = ajpg[da.getMonth()];
}
</script>
    </head>
    <body onload="imgchg()">
    <h1 class="p_ws">이벤트&할인</h1>
    <h1 id="txt" style=""></h1><h2    style="margin-right: 17%; text-align: right;" id=>의 추천메뉴</h2>
    <div class="contents">
        <div class="box1_ws" style="height: 400px;">
        <a href=#><img src="" style="width:749px; height:400px; border-radius : 5px;" id="img"></a>
        </div>
        <br><br>

        <div class="box1_ws"><a href=#><img src="./img/menu3.JPG" style="width:749px; height:199px; border-radius : 5px;"></a>
        </div>
        </div>
    </body>
</html>