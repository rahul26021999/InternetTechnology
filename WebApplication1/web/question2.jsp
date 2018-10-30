<%-- 
    Document   : question2
    Created on : Sep 28, 2018, 2:08:34 PM
    Author     : KMV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Hello World!</h1>
        <c:set var="radio" value="${param.radio}"/>
        <c:out value="${radio}"/>
        <c:choose>    
            <c:when test="${radio=='multiplication'}">
                <c:out value="${Integer.parseInt(param.num1)*Integer.parseInt(param.num2)}"/>
            </c:when>
            <c:when test="${param.radio=='subtraction'}">
                <c:out value="${Integer.parseInt(param.num1)-Integer.parseInt(param.num2)}"/>
            </c:when>
            <c:otherwise>
                <c:out value="${Integer.parseInt(param.num1)+Integer.parseInt(param.num2)}"/>
            </c:otherwise>
          
        </c:choose>
        
    </body>
</html>
