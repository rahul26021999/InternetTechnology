<%-- 
    Document   : qustion2a
    Created on : Sep 28, 2018, 3:00:05 PM
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
        <h1>Hello World!</h1>
        <%
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));
            switch(request.getParameter("radio"))
            {
                case "subtraction":
                    out.println(num1-num2);
                    break;
                case "addition":
                    out.println(num1+num2);
                    break;
                case "multiplication":
                    out.println(num1*num2);
                    break;
            }
        %>
    </body>
</html>
