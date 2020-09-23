<%--
  Created by IntelliJ IDEA.
  User: Mateusz
  Date: 20.09.2020
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Owner Form</title>
</head>
<body>
<jsp:include page="navigator.jsp"/>

<form action="${pageContext.request.contextPath}/owner/form" method="post">

    <label for="inputName">First Name</label> <input id="inputName" type="text" name="firstNameValue"><br/>

    <label for="inputLast">Last Name</label> <input id="inputLast" type="text" name="lastNameValue"><br/>

    <label for="inputAge">Age</label> <input id="inputAge" type="number" min="0" step="0.5" name="ageValue"><br/>
<%--
    <label for="inputaverageAgePupils">Average Age Pupils</label> <input id="inputaverageAgePupils" type="text"
                                                                         name="averageAgePupilsValue"><br/>

    <label for="inputiloscPupils">Ilosc Pupils</label> <input id="inputiloscPupils" type="text" name="iloscPupilsValue"><br/>
--%>
    <input type="submit">

</form>
</body>
</html>
