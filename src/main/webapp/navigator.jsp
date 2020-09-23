<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<ul>
    <li>
        <a href="${pageContext.request.contextPath}/">Home</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/pet/form">Pet form</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/owner/list">Owner List</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/owner/form">Owner form</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/pet/list">Pet list</a>
    </li>


</ul>