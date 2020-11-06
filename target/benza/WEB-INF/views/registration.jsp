<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Register</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Creer un compte</h2>
        <spring:bind path="nom">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="nom" class="form-control" placeholder="nom"
                            autofocus="true"></form:input>
                <form:errors path="nom"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="prenom">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="prenom" class="form-control" placeholder="prenom"
                            autofocus="true"></form:input>
                <form:errors path="prenom"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="age">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="age" class="form-control" placeholder="age"
                            autofocus="true"></form:input>
                <form:errors path="age"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="matricule">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="matricule" class="form-control" placeholder="matricule"
                            autofocus="true"></form:input>
                <form:errors path="matricule"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="passwordConfirm">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="passwordConfirm" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="passwordConfirm"></form:errors>
            </div>
        </spring:bind>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>