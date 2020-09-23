<%--
  Created by IntelliJ IDEA.
  User: Mateusz
  Date: 15.09.2020
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Owner List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<jsp:include page="navigator.jsp"/>
<h1>Owner List:</h1>
<div class="table">
    <div class="header-row">
        <div class="header-cell">
            Id
        </div>
        <div class="header-cell">
            First name
        </div>
        <div class="header-cell">
            Age
        </div>
        <div class="header-cell">
            Average Age Pupils
        </div>
        <div class="header-cell">
            Ilosc Pupils
        </div>
        <div class="header-cell action-cell">
            Actions
        </div>
    </div>
    <c:forEach items="${requestScope.JakasListaWlascicieli}" var="wlasciciel">
<div class="owner-row">
    <div class="owner-cell">
        <c:out value="${wlasciciel.id}"/>
    </div>
    <div class="owner-cell">
        <c:out value="${wlasciciel.firstName}"/>
    </div>
    <div class="owner-cell">
        <c:out value="${wlasciciel.lastName}"/>
    </div>
    <div class="owner-cell">
        <c:out value="${wlasciciel.age}"/>
    </div>
    <div class="owner-cell">
        <c:out value="${wlasciciel.averageAgePupils}"/>
    </div>
    <div class="owner-cell">
        <c:out value="${wlasciciel.iloscPupils}"/>
    </div>
    <div class="owner-cell actions-cell">
<a href="${pageContext.request.contextPath}/owner/delete?id=${wlasciciel.id}">Delete</a>
    </div>
</div>
    </c:forEach>
</div>
</body>
</html>
