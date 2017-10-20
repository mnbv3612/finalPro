<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String vUrlCon = request.getContextPath() + "/pizza.do";
%>
</head>
<body>
<!-- 기간 내에 만들 수 있는 기능 외는 주석 처리함 참고 바람 -->
	<center>
		<h2>회원가입</h2>
	</center>
	<div class="insertBox8_yj">
		<br> 약관동의 회원 가입 시, 먼저 이용약관을 읽어보신 후 동의하신 다음 필요한 정보를 입력하세요. <br>
		각 회원의 신상정보에 대해서는 “신용정보의 이용 및 보호에 관한 법률”에 의거 완벽한 보완을 유지합니다. <br> <br>
		<form>
			<label><input type="checkbox">전체약관 동의 </label><br>
			<textarea class="insertBox1_yj">
제 1조 (목적)
이 약관은 청오디피케이㈜(이하’회사’)에서 운영하는 도미노피자 인터넷사이트<www.dominos.co.kr>와 스마트폰 및 이동통신기기를 통해 제공되는 모바일웹사이트<m.dominos.co.kr> 및 애플리케이션을 통해 제공되는 서비스의 이용에 관련하여 권리 의무 및 관련 절차 등을 규정하고 상호 발전을 도모하는 것을 그 목적으로 합니다.
제 2조 (정의)
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
 (1) “회원”이란 도미노피자 웹/모바일에 접속하여 본 약관에 따라 회사에서 제공하는 서비스를 이용하는 고객을 말합니다.
 (2) "아이디(ID)" 란 “회원”의 식별과 사이트에서 제공하는 서비스를 이용하고, 회사가 회원을 구분, 식별할 수 있도록, 회원이 정하고 회사가 승인하는 문자와 숫자의 조합을 의미합니다.
</textarea>
			<br> <label><input type="checkbox">이용약관 동의(필수) </label><br>
			<textarea class="insertBox1_yj">
개인정보보호를 위한 이용자 동의사항 (자세한 내용은 '개인정보취급방침'을 확인하시기 바랍니다.)
청오디피케이㈜에서 운영하는 도미노피자 홈페이지 서비스(이하 도미노)는 회원이 도미노에 제공한 개인정보가 보호 받을 수 있도록 통신비밀보호법, 전기통신사업법, 정보통신망이용촉진 등에 관한 법률 등 정보통신서비스제공자가 준수해야 할 관련 법규상의 개인정보보호규정 및 정보통신부가 제정한 개인정보보호지침을 엄격히 준수합니다. 도미노의 개인정보취급과 관련하여 아래와 같은 내용을 담고 있습니다.
</textarea>
			<br> <label><input type="checkbox">개인정보 수집 및 이용
				동의(필수) </label><br>
			<textarea class="insertBox1_yj">
당사가 회원가입 후 위탁업무 이외의 목적으로 제3자에게 개인정보를 제공할 경우, 개인정보를 제공받는 자, 수집 및 이용 목적, 제공하는 개인정보의 항목, 개인정보 보유 및 이용기간에 대해 별도의 동의를 득한 후 제공하고 있습니다.
</textarea>
			<br>
		</form>
	</div>
	<br>
	<hr>

	<center>
		<h3>정보 입력</h3>
		<p>온라인 주문 서비스와 다양한 혜택을 받으시려면 정보를 입력해 주세요.</p>
	</center>
	<hr>
	<div class="insertBox8_yj">
		<div class="insertBox7_yj">

			<div class="insertBox4_yj">
				<div class="insertBox2_yj">이름</div>
				<div class="insertBox2_yj">아이디</div>
				<div class="insertBox2_yj">비밀번호</div>
				<!-- <div class="insertBox2_yj">비밀번호 확인</div>
				<div class="insertBox2_yj">생년월일</div>
				<div class="insertBox2_yj">성별</div> -->
				<div class="insertBox2_yj">휴대전화</div>
				<div class="insertBox2_yj">주소</div>
				<div class="insertBox2_yj">이메일</div>
			</div>
			<!-- ======== 회원가입 submit시에 콘트롤러로 넘어가는 form ========== -->
			<form action="<%=vUrlCon%>" method="post">
			<input type="hidden" name="category" value="insertChk">
				<div class="insertBox5_yj">

					<div class="insertBox3_yj">
						<input type="text" placeholder="이름" name="mem_name" style="background-color :  wheat;"></input>
					</div>
					<div class="insertBox3_yj">
						<input type="text" placeholder="아이디" name="mem_id" style="background-color :  wheat;"></input><input type="button"
							value="중복확인"></input>
					</div>
					<div class="insertBox3_yj">
						<input type="password" placeholder="비밀번호" name="mem_pwd" style="background-color :  wheat;"></input>
					</div>
					
					<!-- <div class="insertBox3_yj">
						<input type="password" placeholder="8~16자 영문대소문자,숫자,특수문자 사용가능"></input>
					</div>
					
					<div class="insertBox3_yj">
						<label><input type="radio" name="birth" checked="checked">양력</label>
						<label><input type="radio" name="birth">음력</label> <select>
							<option value="year">년</option>
							<option value="2000">2000</option>
							<option value="2001">2001</option>
							<option value="2002">2002</option>
						</select> <select>
							<option value="month">월</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select> <select>
							<option value="day">일</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</div>
					<div class="insertBox3_yj">
						<label><input type="radio" name="sex" checked="checked">여성</label>
						<label><input type="radio" name="sex">남성</label> <label><input
							type="radio" name="sex">제3성</label>
					</div> -->
					
					<div class="insertBox3_yj">
						<!-- <select>
							<option value="KT">KT</option>
							<option value="LGT">LGT</option>
							<option value="SKT">SKT</option>
							<option value="phoneCompanyEtc">선택</option>
						</select> <select>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="phoneNumberEtc">선택</option>
						</select> -<input type="text" style="width: 50px;" /> - -->
						<input type="text"	style="width: 300px; background-color : wheat;" name="mem_phone" />
					</div>
					<div class="insertBox3_yj">
						<input type="text" style="width: 300px; background-color : wheat;" name="mem_addr" />
					</div>
					<div class="insertBox3_yj">
						<input type="text" style="width: 300px; background-color : wheat;" name="mem_email"  />
						<!-- @ <input type="text" style="width: 70px;" /> <select>
							<option value="네이버">naver.com</option>
							<option value="한메일">hanmail.net</option>
							<option value="구글">gmail.com</option->
							<option value="emailCompany">직접입력</option>
						</select>  -->
					</div>
				</div>
		</div>
	</div>
	<hr>
	<div class="insertBox6_yj">
		<input type="submit" value="회원가입" /> <input type="reset" value="초기화" />
		</form>
	</div>




</body>
</html>