<%@page contentType="text/html" pageEncoding="UTF-8" import="Bean.EmployeeDao,Bean.Employee"%>
<jsp:useBean id="emp" class="Bean.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="emp"></jsp:setProperty>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int status = Bean.EmployeeDao.updateRecords(emp);
            if(status>0){
                out.println(status);
            }
            else{
                out.println(status);
            }
        %>
        
    </body>
</html>