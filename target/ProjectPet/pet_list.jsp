<%--
  Created by IntelliJ IDEA.
  User: Mateusz
  Date: 22.09.2020
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Pet List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<jsp:include page="navigator.jsp"/>
<h1>Pet List:</h1>
<div class="table-pet">
    <div class="header-row-pet">
        <div class="header-cell-pet">
            Id
        </div>
        <div class="header-cell-pet">
            Name
        </div>
        <div class="header-cell-pet">
            AgePet
        </div>
        <div class="header-cell-pet">
            OwnerName
        </div>
        <div class="header-cell-pet">
            Weight
        </div>
        <div class="header-cell-pet">
            PureRace
        </div>
        <div class="header-cell-pet">
            Race
        </div>
    </div>
    <c:forEach items="${requestScope.lista_Zwierzakow}" var="zwierze">
        <div class="pet-list">
            <div class="pet-cell">
                <c:out value="${zwierze.id}"/>
            </div>
            <div class="pet-cell">
                <c:out value="${zwierze.name}"/>
            </div>
            <div class="pet-cell">
                <c:out value="${zwierze.agePet}"/>
            </div>
            <div class="pet-cell">
                <c:out value="${zwierze.ownerName}"/>
            </div>
            <div class="pet-cell">
                <c:out value="${zwierze.weight}"/>
            </div>
            <div class="pet-cell">
                <c:out value="${zwierze.pureRace}"/>
            </div>
            <div class="pet-cell">
                <c:out value="${zwierze.race}"/>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
