<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:useBean id="dao" class="empl.emplDao"/>
 <jsp:useBean id="bean" class="empl.emplBean"/>
 <jsp:setProperty name="bean" property="*"/>
 <% request.setCharacterEncoding("UTF-8");
 int cnt = dao.insertData(bean);
 if(cnt==1){
response.sendRedirect("select.jsp");

 }else{
	 response.sendRedirect("insertForm.jsp");
 }
  


%>