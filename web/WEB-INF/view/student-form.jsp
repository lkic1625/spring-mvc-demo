<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lkic1
  Date: 2020-07-24
  Time: 오후 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>student-form</title>
</head>
<body>

    <form:form action="processForm" modelAttribute="student" method="GET">
        FirstName: <form:input path="firstName"/>

        <br><br>

        LastName: <form:input path="lastName"/>

        <br><br>

        Country:
        <form:select path="country">
            <form:options items="${theCountryOptions}" />

        </form:select>

        <br><br>

        Java <form:radiobutton path="favoriteLanguage" value="Java"/>
        Ruby  <form:radiobutton path="favoriteLanguage" value="Ruby"/>
        C#  <form:radiobutton path="favoriteLanguage" value="C#"/>
        Python <form:radiobutton path="favoriteLanguage" value="Python"/>

        <br><br>

        Operation Systems:

        Linux <form:checkbox path="operatingSystems" value="Linux"/>
        Windows <form:checkbox path="operatingSystems" value="Windows"/>
        Mac Os <form:checkbox path="operatingSystems" value="Mac Os"/>


        <input type="submit" value="Submit"/>

    </form:form>

</body>
</html>
