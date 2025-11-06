<%-- 
    Document   : getRecordsById
    Created on : 5 Nov 2025, 11:14:04 am
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "emp2" class="Bean.Employee"></jsp:useBean>
<jsp:setProperty property = "*" name = "emp2"></jsp:setProperty>
<%@page import="Bean.Employee,Bean.EmployeeDao,java.util.*" %>
<%
    List<Employee> list = Bean.EmployeeDao.getRecordsById(emp2);
    for(Employee emp1: list){
    emp1.getName();
    emp1.getPosition();
    emp1.getDepartment();
    emp1.getSalary();
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Employee Page</title>
    </head>
        
    <body>
        <h1>Update Records</h1>
        <%
            for(Employee emp:list){
        %>
        
        <form action ="updateRecords.jsp" method ="post">
        Employee Id:<input type ="text" value ="<%=emp.getId()%>" readonly><br/><br/>
        Employee Name:<input type = "text" value = "<%=emp.getName()%>" name="name" ><br/><br/>
        Employee Position:<input type = "text" value = "<%=emp.getPosition()%>" name="position"><br/><br/>
        Employee Department:<input type="text" value = "<%=emp.getDepartment()%>" name = "department"><br/><br/>
        Employee Salary:<input type = "text" value = "<%=emp.getSalary()%>" name = "salary"><br/><br/>
        
        <input type ="submit" name = "btnSubmit"> 
     <%
         }
     %>
     </body>
     
</html>
