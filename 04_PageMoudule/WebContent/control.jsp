<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String product = request.getParameter("product");

switch(product){
case "1":
	product="tv";
	break;
case "2":
	product="dc";
	break;
case "3":
	product="mp";
	break;
}
%>
<jsp:include page="template.jsp" >
	<jsp:param value="<%=product %>" name="product"/> 
</jsp:include>