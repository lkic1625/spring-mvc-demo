<%--
  Created by IntelliJ IDEA.
  User: lkic1
  Date: 2020-07-26
  Time: 오후 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Registration Form</title>

    <style>
        .error{color:red}
    </style>
</head>
<body>
<i>Fill out the form Asterisk(*) means required.</i>

    <form:form action="processForm" modelAttribute="customer">
        
        First Name:  <form:input path="firstName"/>

        <br><br>

        Last Name (*):  <form:input path="lastName"/>
        <form:errors path="lastName" cssClass="error"/>

        <br><br>

        Postal code:  <form:input path="postalCode"/>
        <form:errors path="postalCode" cssClass="error"/>

        <br><br>

        free passes (*):  <form:input path="freePasses"/>
        <form:errors path="freePasses" cssClass="error"/>

        <br><br>

        course code(*):  <form:input path="courseCode"/>
        <form:errors path="courseCode" cssClass="error"/>

        <br><br>

        <input type="submit" value="Submit">

    </form:form>
</body>
</html>
