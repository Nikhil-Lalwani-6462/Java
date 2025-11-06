<%-- 
    Document   : deleteRecords
    Created on : 6 Nov 2025, 8:23:38 am
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Bean.EmployeeDao"%>
<jsp:useBean id = "emp" class="Bean.Employee"></jsp:useBean>
<jsp:setProperty property = "*" name="emp"></jsp:setProperty>

<%
    int status = Bean.EmployeeDao.updateRecords(emp);
    if(status>0){
        response.sendRedirect("viewAll.jsp");
    }
    else{
        response.sendRedirect("viewAll.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
