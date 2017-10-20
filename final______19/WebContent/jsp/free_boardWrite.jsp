<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!doctype html>
<html>
 <head>
  <meta charset="UTF-8">
 </head>

 <body>
 
	 <h3 style="color:gray;">게시글 작성</h3>
     <table border="1" class="WriteTB_gm">
     	<ul>
     		<tr>
     			<td class="borderTD1_gm"><li>작성자</td>
     			<td style=" border:none;"><input type = text class="borderText_gm"></td>
     			<td class="borderTD1_gm"><li>비밀번호</td>
     			<td style=" border:none;">
     				<input type = "password" class="borderText_gm" style=" margin-right: 1px;">
     				<!-- <select style="height: 25px; border : 1px solid gray;">
		        	<option selected>자유 게시판</option>
		        	<option>레시피 공유 게시판</option>
		        	</select>	-->
		        </td>
     		</tr>
     		<tr>
     			<td class="borderTD1_gm"><li>제목</td>
     			<td colspan="3" style="width: 200px; border:none;"><input type = text class="borderText_gm" style="width: 623px;"></td>
     		</tr>
     		<tr>
     			<td class="borderTD1_gm"><li>글 내용</td>
     			<td colspan="3" style=" border:none;"><textarea rows="15" cols="3" class="borderTXTarea"></textarea>
     			</td>
     		</tr>
     	</ul>
     </table>
     <a href="index.jsp?category=jsp/board_index.jsp?cate=free_board.jsp">
     	<input type="button" class="boardwritelist" value="목록 "></a>
     <input type="button" class="boardwritelist" value="완료 ">

 </body>
</html>