<%-- 
    Document   : Stringreverse
    Created on : Oct 30, 2018, 11:40:18 AM
    Author     : KMV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="h" uri="/WEB-INF/tlds/customtag.tld"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>String reverse</h1>
        <form action="Stringreverse.jsp">
            <label>Enter your name</label>
            <input type="text" name="name"><br>
            <input type="submit" name="submit" value="Run">
        </form>
        <br>
        <br>
        <c:if test="${param.submit=='Run'}">
            <h:reverse input="${param.name}"></h:reverse>
        </c:if>
    </body>
</html>
