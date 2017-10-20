<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>개인정보 입력 안내문</h2>
	<p>회원정보를 정확히 기입하셔야 주문이나 이벤트에 대한 불이익이 없습니다.</p>
	<hr>
	<div class="insertBox8_yj">
	<div class="insertBox7_yj">

		<div class="insertBox4_yj">
			<div class="insertBox2_yj">이름</div>
			<div class="insertBox2_yj">아이디</div>
			<div class="insertBox2_yj">비밀번호</div>
			<div class="insertBox2_yj">비밀번호 확인</div>
			<div class="insertBox2_yj">생년월일</div>
			<div class="insertBox2_yj">성별</div>
			<div class="insertBox2_yj">휴대전화</div>
			<div class="insertBox2_yj">이메일</div>
		</div>

		<div class="insertBox5_yj">
			
				<div class="insertBox3_yj">
					<input type="text" placeholder="이름"></input>
				</div>
				<div class="insertBox3_yj">
					<input type="text" placeholder="아이디"></input>
				</div>
				<div class="insertBox3_yj">
					<input type="password" placeholder="8~16자 영문대소문자,숫자,특수문자 사용가능"></input>
				</div>
				<div class="insertBox3_yj">
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
				</div>
				<div class="insertBox3_yj">
					<select>
						<option value="KT">KT</option>
						<option value="LGT">LGT</option>
						<option value="SKT">SKT</option>
						<option value="phoneCompanyEtc">선택</option>
					</select> <select>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="phoneNumberEtc">선택</option>
					</select> -<input type="text" style="width: 50px;" /> -<input type="text"
						style="width: 50px;" />
				</div>
				<div class="insertBox3_yj">
					<input type="text" style="width: 150px;" />@ <input type="text"
						style="width: 70px;" /> <select>
						<option value="네이버">naver.com</option>
						<option value="한메일">hanmail.net</option>
						<option value="구글">gmail.com</option>
						<option value="emailCompany">직접입력</option>
					</select>
				</div>
		</div>
	</div>

	<hr>
	<div class="insertBox6_yj">
		<input type="button" value="수정" /> <input type="reset" value="초기화" />
	
	</div>
	</div>




</body>
</html>