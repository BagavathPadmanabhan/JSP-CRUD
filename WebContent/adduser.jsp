<!-- 
The jsp:useBean action tag is used to locate or instantiate a bean class. 
If bean object of the Bean class is already created, it doesn't create the bean depending 
on the scope. But if object of bean is not created, it instantiates the bean. -->

<!-- The setProperty and getProperty action tags are used for developing web application 
with Java Bean. In web devlopment, bean class is mostly used because it is a reusable
software component that represents data.

The jsp:setProperty action tag sets a property value or values in a bean using the setter
 method. -->
 
<%@page import="com.bags.dao.UserDAO"%>

<jsp:useBean id="u" class="com.bags.model.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDAO.save(u);
if(i>0){
response.sendRedirect("adduser-success.jsp");
}else{
response.sendRedirect("adduser-error.jsp");
}
%>