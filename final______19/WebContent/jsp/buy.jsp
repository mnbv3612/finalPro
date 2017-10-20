<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="contents">
<h1 class="title_gm">주문서 작성</h1>
	<div class="cart_gm">
        <table border="1" class="table_gm">
	       	<caption><h3 style="color:gray;">주문정보</h3></caption>
            <tr>
                <td style="width: 100px;"	class="top_gm"><b> 제품 </b></td>
                <td style="width: 70px;" 	class="top_gm"><b> 가격 </b></td>
                <td style="width: 200px;" 	class="top_gm"><b> 정보 </b></td>
                <td style="width: 50px;" 	class="top_gm"><b> 수량 </b></td>
            </tr>
            
            <!-- 여기부터 예시입니다. -->
            
            <tr> 
		        <td class="td_gm">피자</td>
		        <td class="td_gm">10,000 원</td>
		        <td class="td_gm"> OO도우, OO소스, OO치즈, OO토핑 </td>
		        <td class="td_gm">1</td>
		        
          	</tr>
          	<tr>
          		<td class="td_gm">사이드 메뉴</td>
          		<td class="td_gm">5,000 원</td>
          		<td class="td_gm">샐러드</td>
          		<td class="td_gm">1</td>
		        
		    </tr>
		    <tr>
          		<td class="td_gm">소스</td>
          		<td class="td_gm">500 원</td>
          		<td class="td_gm">갈릭소스</td>
          		<td class="td_gm">1</td>
		    
		    </tr>
		    <tr>
          		<td class="td_gm">음료</td>
          		<td class="td_gm">1,500 원</td>
          		<td class="td_gm">콜라1.5L</td>
          		<td class="td_gm">1</td>
		    </tr>
		    <tr>
		    	<td colspan="4" style="font-weight: bold; text-align: right; padding-right: 20px;">총 주문 금액 : <b style="color:red; font-size:20pt;">27,000원</b></td>
		    </tr>
		</table>	
	</div>
	<!-- 여기까지 예시입니다. -->
	<div class="baedal_gm">
		<h3 style="text-align: center;">배달 정보</h3>
		<hr style="width: 450px;">
			<div>
				<ul>
					<li><b>수 령 인 </b><input type="text" style="width: 100px; height: 20px; margin-left: 15px;"></li>
					<br>
		            <li><b>주     소 </b><input type="text" style="width: 196px; height: 20px; margin-left: 35px;">
		            				<input type="text" style="width: 195px; height: 20px; margin-left: 80px; margin-top: 10px;" placeholder="상세주소"></li>
		            <br>
		            <li><b>연 락 처 </b><input type="tel" style="margin-left: 15px;" class="input_tel_gm">
		            	 - <input type="tel" class="input_tel_gm">
		                 - <input type="tel" class="input_tel_gm"></li>
	            </ul>
            </div>
	</div>
	<div class="pay_gm">
		<h3 style="text-align: center;">결제 방법</h3>
		<hr style="width: 450px;">
		
			<table style="border-collapse: collapse;">
				<tr>
					<td class="buyTxt_gm"><ul><li><b> 미 리 결 제 </b></li></ul></td>
					<td class="select_gm">
						<input type="button" value="휴대폰 결제" class="buy_gm">
					</td>
					<td class="select_gm">
						<input type="button" value="카드 결제" class="buy_gm">
					</td>
				</tr>
			</table>
			<br>
			<table style="border-collapse: collapse;">
				<tr>
					<td class="buyTxt_gm"><ul><li><b> 현 장 결 제 </b></li></ul></td>
					<td class="select_gm">
						<input type="button" value="카드 결제" class="buy_gm">
					</td>
					<td class="select_gm">
						<input type="button" value="현금 결제" class="buy_gm">
					</td>
				</tr>
			</table>
			<h4 style="color:#FFBB00; margin : 7px;"> * 결제방법 선택 시 바로 결제가 시작됩니다.</h4>
	</div>
	<center>
		<a href="index.jsp?category=jsp/shopping_cart.jsp">
		<input type="button" value="취소" class="buy_gm" style="height: 40px; width: 80px; margin-top: 10px;"></a>
	</center>
</div>
</body>
</html>