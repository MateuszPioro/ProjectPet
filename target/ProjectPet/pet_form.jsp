<%--
  Created by IntelliJ IDEA.
  User: Mateusz
  Date: 12.09.2020
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Pet Form</title>
</head>
<body>
<jsp:include page="navigator.jsp"/>

<form action="${pageContext.request.contextPath}/pet/form" method="post">

    <c:choose>
        <c:when  test="${requestScope.ownerId == null}">
            <label for="owner">Owner:</label>
            <select id="owner" name="ownerIdValue">
                <c:forEach items="${requestScope.all_owners}" var="owner">
                    <option value="${owner.id}">
                        <c:out value="${owner.firstName} ${owner.lastName}"/>
                    </option>
                </c:forEach>
            </select>
            <br/>
        </c:when>
        <c:otherwise>
            <input type="number" value="${requestScope.ownerId}" name="studentIdValue" hidden>
        </c:otherwise>
    </c:choose>
    <label for="inputName">Name:</label> <input id="inputName" type="text" name="NameValue"><br/>

    <label for="inputAge">Age:</label> <input id="inputAge" type="number" min="0" step="0.01"  name="AgeValue"><br/>

    <label for="inputWeight">Weight:</label> <input id="inputWeight" type="number" min="0" step="0.01"  name="WeightValue"><br/>

    <label for="inputPureRace">PureRace:</label> <input id="inputPureRace" type="checkbox" name="PureRaceValue"><br/>

    <label for="race">Race:</label>
    <select id="race" name="raceValue">
        <c:forEach items="${requestScope.all_race}" var="racee">
            <option value="${racee}">
                <c:out value="${racee.name()}"/>
            </option>
        </c:forEach>
    </select>
    <br/>
    <input type="submit">
</form>
</body>
</html>
