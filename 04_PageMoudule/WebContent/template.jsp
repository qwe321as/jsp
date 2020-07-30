<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String product = request.getParameter("product"); %>
template.jsp<BR><BR>
 <table border="1" style="width: 500px; height: 200px; text-align: center">
 <tr>
 <td colspan="2"> 
 <%@ include file="top.jsp" %>
 </td>
 </tr>
 <tr>
 <td>
 <jsp:include page="<%= product+ \"Left.jsp\"%>"/>
 </td>
 <td>
 <jsp:include page="<%= product+ \".jsp\"%>"/>
 </td>
 </tr>
 <td colspan="2">
 <%@ include file="bottom.jsp" %>
  </td>
 </table>