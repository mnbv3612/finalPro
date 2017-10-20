<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/myRecipe_jh.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div class="contents">
<h1 class="MRh1_jh">나의 레시피</h1>
	<form action="buy.jsp">
	<div class="cart_jh">
        <table border="1" class="MRtable_jh">
	       	<caption><h3>상품 정보</h3></caption>
            <tr>
                <td style="width: 100px;"  class="MRth_jh"><b> 제품 </b></td>
                <td style="width: 70px;" class="MRth_jh"><b> 가격 </b></td>
                <td style="width: 200px;" class="MRth_jh"><b> 정보 </b></td>
                <td style="width: 50px;" class="MRth_jh"><b> 수량 </b></td>
            </tr>
            
            <tr> 
		        <td class="MRtd_jh">마.골.피</td>
		        <td class="MRtd_jh">xx,xxx 원</td>
		        <td class="MRtd_jh"> xx도우, xx소스, xx치즈, xxxx </td>
		        <td class="MRtd_jh">1</td>
		        
          	</tr>
          	<tr>
          		<td class="MRtd_jh">사이드 메뉴</td>
          		<td class="MRtd_jh">x 원</td>
          		<td class="MRtd_jh">샐러드</td>
          		<td class="MRtd_jh">1</td>		        
		    </tr>
		    <tr>
          		<td class="MRtd_jh">소스</td>
          		<td class="MRtd_jh">x 원</td>
          		<td class="MRtd_jh">갈릭소스</td>
          		<td class="MRtd_jh">1</td>
		    
		    </tr>
		    <tr>
          		<td class="MRtd_jh">음료</td>
          		<td class="MRtd_jh">x 원</td>
          		<td class="MRtd_jh">콜라1.5L</td>
          		<td class="MRtd_jh">1</td>
		    </tr>
		</table>
		</div>
		<br>
<div class="cart_buttom_jh">
		<h3 style="margin-left: 60px;" >총 주문 금액</h3>
		<hr style="width: 900px;">
		<div><input type="text" value="xx,xxx원" class="total_jh"></div>
		
		<!-- 여기까지 예시입니다. -->
		<table style="border-collapse: collapse;">
		<tr>
			<td class="select_jh">
				<a href="index.jsp?category=jsp/pizza_cooking.jsp">
					<input type="button" value="수정하기" class="buy_jh">
				</a>
			</td>
			<td class="select_jh">
				<a href="index.jsp?category=jsp/buy.jsp">
					<input type="button" value="주문하기" class="buy_jh">
				</a>
			</td>
		</tr>
		</table>
	</div>
			
	
	</form>
	</div>

</body>
</html>