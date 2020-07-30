<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
템플릿 페이지 - 메인페이지
<form method="post" action="control.jsp">
<table border ="1" style="width: 300px; text-align: center;">
<tr>
<th colspan="2">제품을 선택해 주세요</th>
</tr>
<tr>
<td >제품</td>
<td align="left">
<input type="radio" name="product" value="1">텔레비전<br>
<input type="radio"name="product" value="2">디지털카메라<br>
<input type="radio"name="product" value="3">MP3플레이어<br>
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="확인">
<input type="reset" value="취소">
</td>
</tr>
</table>
</form>
