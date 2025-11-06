<%-- 
    Document   : viewAll
    Created on : 5 Nov 2025, 10:16:16 am
    Author     : Admin
--%>

<%@page import="Bean.Employee,Bean.EmployeeDao,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List <Employee> list = Bean.EmployeeDao.viewAll();
            
        %>
        <table border="1">
            <tr>
                <th>Employee Id</th>
                <th>Employee Name</th>
                <th>Employee Position</th>
                <th>Employee Department</th>
                <th>Employee Salary</th>
                <th>Update Record</th>
                <th>Delete Record</th>
                
            </tr>
             <%
                    for(Employee emp:list)
                        {
                        
                
                %>
            <tr>
               
                <td><%=emp.getId()%></td>
                <td><%=emp.getName()%></td>
                <td><%=emp.getPosition()%></td>
                <td><%=emp.getDepartment()%></td>
                <td><%=emp.getSalary()%></td>
                <td><a href="getRecordsById.jsp?id=<%=emp.getId()%>">Update</a></td>
                <td><a href ="deleteRecords.jsp?id=<%=emp.getId()%>">Delete</a></td>
                  
                
            </tr>
            <%
                }
            %>
            
            
        </table>
    </body>
</html>
