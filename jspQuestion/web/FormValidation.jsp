<%-- 
    Document   : FormValidation
    Created on : Oct 5, 2018, 2:02:49 PM
    Author     : KMV
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            span{
                font-size: 13px;
                margin-left: 10px;
                text-transform: capitalize;
                color: red;
            }
        </style>
    </head>
    <body>  
        
            <c:set var="name" value="${param.name}"/>
            <c:set var="dob" value="${param.dob}"/>
            <c:set var="gender" value="${param.gender}"/>
            <c:set var="luckyNumber" value="${param.luckyNo}"/>
            <c:set var="Indian" value=""/>
            <c:set var="Chinese" value=""/>
            
            <c:forEach items="${param.fItems}" var="x">
                <c:if test="${x=='indian'}">
                    <c:set var="Indian" value="${x}"/>
                </c:if>
                <c:if test="${x=='chinese'}">
                    <c:set var="Chinese" value="${x}"/>
                </c:if>
            </c:forEach>
           
           <c:set var="foodItemError" value=""/>
           <c:set var="nameError" value=""/>
            <c:set var="dobError" value=""/>
            <c:set var="genderError" value=""/>
           <c:set var="luckyNumberError" value=""/>
           
           <c:if test="${param.submit=='Validate'}">
               
               <c:if test="${empty name}">
                    <c:set var="nameError" value="Name Can not be Empty"/>        
               </c:if>    
               <c:if test="${empty dob}">
                    <c:set var="dobError" value="dob can not be empty"/>
               </c:if>    
               <c:if test="${empty gender}">
                    <c:set var="genderError" value="Select any Gender"/>
               </c:if>
              <c:choose>
                   <c:when test="${empty luckyNumber}">
                       <c:set var="luckyNumberError" value="Please Enter your Lucky Number"/>
                   </c:when>
                   <c:otherwise>
                      <c:choose>
                       <c:when test="${luckyNumber>0 && luckyNumber<101}">
                        <c:set var="luckyNumberError" value=""/>
                       </c:when>
                       <c:otherwise>
                          <c:set var="luckyNumberError" value="Can be only Between 0 and 100"/>     
                       </c:otherwise>
                      </c:choose>
                    </c:otherwise>
                  
               </c:choose>
            </c:if>
               
           
        <h1>Form VAlidation</h1>
        <form action="FormValidation.jsp">
            <label>Name</label>
            <input type="text" name="name" value="${name}"><span>${nameError}</span><br>
            <label>Lucky Number</label>
            <input type="number" name="luckyNo" value="${luckyNumber}"><span>${luckyNumberError}</span><br>
            <label>Dob</label>
            <input type="date" name="dob" value="${dob}"><span>${dobError}</span><br>
            <label>Gender</label><span>${genderError}</span><br>
            <c:choose>
            <c:when test="${gender=='Male'}">
                <label>Male</label>
                <input type="radio" name="gender" value="Male" checked="checked">
                <label>Female</label>
                <input type="radio" name="gender" value="Female">
            </c:when>
            <c:when test="${gender=='Female'}">
                <label>Male</label>
                <input type="radio" name="gender" value="Male">
                <label>Female</label>
                <input type="radio" name="gender" value="Female" checked="checked">
            </c:when>
            <c:otherwise>
                 <label>Male</label>
                <input type="radio" name="gender" value="Male">
                <label>Female</label>
                <input type="radio" name="gender" value="Female">
            </c:otherwise>
            </c:choose>
            <br>
            <label>Food Items</label><span>${foodItemError}</span><br>
            <label>Indian</label>
            <c:choose>
                <c:when test="${empty Indian}">
                   <input type="checkbox" name="fItems" value="indian">        
                </c:when>
                <c:otherwise>
                 <input type="checkbox" name="fItems" value="indian" checked="checked">        
                </c:otherwise>
            </c:choose>
            <label>Chinese</label>
            <c:choose>
                <c:when test="${empty Chinese}">
                   <input type="checkbox" name="fItems" value="chinese">
                </c:when>
                <c:otherwise>
                 <input type="checkbox" name="fItems" value="chinese" checked="checked">
                </c:otherwise>
            </c:choose>
                 <br>
                 <br>
            <input type="submit" value="Validate" name="submit">  
        </form>
        
    </body>
</html>
