<%-- 
    Document   : mystudent
    Created on : Oct 30, 2018, 9:37:32 AM
    Author     : KMV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="student" class="test.student">
            <jsp:setProperty name="student" value="RahulGupta" property="name" />
            <jsp:getProperty name="student" property="name"/>
            
        </jsp:useBean>
    </body>
</html>
