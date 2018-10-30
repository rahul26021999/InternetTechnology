<%-- 
    Document   : customtags
    Created on : Oct 9, 2018, 9:24:57 AM
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
    
        <form action="customtags.jsp">
            <label>Enter your name</label>
            <input type="text" name="name"><br>
            <label>Chewy</label>
            <input type="radio" name="choco" value="Chewy">
            <label>Crunchy</label>
            <input type="radio" name="choco" value="Crunchy"><br>
            <input type="submit" name="submit" value="Run">
        </form>
        <br>
        <br>
        <c:if test="${param.submit=='Run'}">
            <h:hello name="${param.name}"></h:hello>
            <br>
        <h:choco texture="${param.choco}"></h:choco> 
        </c:if>
    
</html>
