<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="contents">
	<h1 class="title_gm">장바구니</h1>
	<div class="cart_gm">
        <table border="2" class="table_gm">
	       	<caption><h3 style="color:gray;">주문정보</h3></caption>
            <tr>
                <td style="width: 100px;"   class="top_gm"><b> 제품 </b></td>
                <td style="width: 70px;" 	class="top_gm"><b> 가격 </b></td>
                <td style="width: 200px;"   class="top_gm"><b> 정보 </b></td>
                <td style="width: 50px;" 	class="top_gm"><b> 수량 </b></td>
                <td style="width: 50px;"		class="top_gm"><b> 주문취소 </b></td>
            </tr>
            
            <!-- 여기부터 예시입니다. -->
            
            <tr> 
		        <td class="td_gm">피자</td>
		        <td class="td_gm">10,000 원</td>
		        <td class="td_gm"> OO도우, OO소스, OO치즈, OO토핑 </td>
		        <td class="td_gm"><select class="su_gm">
		        	<option selected>1</option>
		        	<option>2</option>
		        	<option>3</option>
		        	<option>4</option>
		        	<option>5</option>
		        	</select>	
		        </td>
		        <td class="td_gm"><input type="button" value="취소" class="cancel_gm"></td>
          	</tr>
          	<tr>
          		<td class="td_gm">사이드 메뉴</td>
          		<td class="td_gm">5,000 원</td>
          		<td class="td_gm">샐러드</td>
          		<td class="td_gm"><select class="su_gm">
		        	<option selected>1</option>
		        	<option>2</option>
		        	<option>3</option>
		        	<option>4</option>
		        	<option>5</option>
		        	</select>	
		        </td>
		        <td class="td_gm"><input type="button" value="취소" class="cancel_gm"></td>
		    </tr>
		    <tr>
          		<td class="td_gm">소스</td>
          		<td class="td_gm">500 원</td>
          		<td class="td_gm">갈릭소스</td>
          		<td class="td_gm"><select class="su_gm">
		        	<option selected>1</option>
		        	<option>2</option>
		        	<option>3</option>
		        	<option>4</option>
		        	<option>5</option>
		        	</select>	
		        </td>
		        <td class="td_gm"><input type="button" value="취소" class="cancel_gm"></td>
		    </tr>
		    <tr>
          		<td class="td_gm">음료</td>
          		<td class="td_gm">1,500 원</td>
          		<td class="td_gm">콜라1.5L</td>
          		<td class="td_gm"><select class="su_gm">
		        	<option selected>1</option>
		        	<option>2</option>
		        	<option>3</option>
		        	<option>4</option>
		        	<option>5</option>
		        	</select>	
		        </td>
		        <td class="td_gm"><input type="button" value="취소" class="cancel_gm"></td>
		    </tr>
		</table>
	</div>
	<div class="cart_gm">
		<h3 style="margin-left: 60px;" >총 주문 금액</h3>
		<hr style="width: 900px;">
		<div><input type="text" value="27,000원" class="total_gm"></div>
		
		<!-- 여기까지 예시입니다. -->
		<table style="border-collapse: collapse;">
		<tr>
			<td class="select_gm">
				<a href="index.jsp?category=jsp/pizza_cooking.jsp">
					<input type="button" value="메뉴더보기" class="buy_gm">
				</a>
			</td>
			<td class="select_gm">
				<a href="index.jsp?category=jsp/buy.jsp">
					<input type="button" value="주문하기" class="buy_gm">
				</a>
			</td>
		</tr>
		</table>
	</div>
</div>
</body>
</html>