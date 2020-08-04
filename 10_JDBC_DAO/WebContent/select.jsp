<%@page import="empl.emplBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="empl.emplDao"/>
<%
ArrayList<emplBean> al = dao.getAllempl();
System.out.println("select.jsp al.size():" + al.size());

%>
<table border="1" style="width:500px; blue; text-align: center; align-content: center;">
<tr style="background-color: yellow">
<th>아이디</th>
<th>이름</th>
<th>부서번호</th>
<th>급여</th>
<th>수정</th>
<th>삭제</th> </tr>
<%
for(emplBean eb : al){
%>
<tr>
<td><%=eb.getMid() %></td>
<td><%=eb.getName()%></td>
<td><%=eb.getDid() %></td>
<td><%=eb.getSalary() %></td>
<td><a href="updateForm.jsp?num=<%=eb.getDid()%>">수정</a></td>
<td><a href="deleteProc.jsp?num=<%=eb.getDid()%>">삭제</a></td>
</tr>
<%
}
%>
</table>
<a href="insertForm.jsp">삽입</a>