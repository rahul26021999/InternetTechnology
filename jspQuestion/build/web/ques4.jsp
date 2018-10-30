<%-- 
    Document   : ques4
    Created on : Oct 26, 2018, 2:58:21 PM
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
        <form action="ques4.jsp">
            <label>Enter your name</label>
            <input type="text" name="name"><br>
            <input  type="submit" value="ClickMe" name="submit">
        </form>
        <br>
        <c:if test="${param.submit=='ClickMe'}">
            <h1><h:WishMe name="${param.name}"></h:WishMe></h1>
        </c:if>
    </body>
</html>
