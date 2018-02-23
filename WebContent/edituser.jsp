<%@page import="com.bags.dao.UserDAO"%>
<jsp:useBean id="u" class="com.bags.model.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDAO.update(u);
response.sendRedirect("viewusers.jsp");
%>