<%-- 
    Document   : addUser
    Created on : 4 Nov 2025, 12:09:32 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Bean.EmployeeDao"%>
<jsp:useBean id="emp" class="Bean.Employee"></jsp:useBean>
<jsp:setProperty property = "*" name ="emp"></jsp:setProperty>

<%
    int status = Bean.EmployeeDao.addUser(emp);
    if (status > 0){
        out.println("Data Added Successfully");
    }else{
        out.println("Failed to add data");
    }
%>



