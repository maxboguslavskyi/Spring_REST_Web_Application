<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Failure</title>
    <link href="../../assets/css/bootstrap-united.css" rel="stylesheet"/>

</head>
<body>
<script src="../../jquery-2.1.4.js">
</script>

<script src="../../bootstrap/js/bootstrap.js">
</script>

<div class="navbar navbar-default">

    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target=".navbar-responsive-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>

    <div class="navbar-collapse collapse navbar-responsive-collapse">
        <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search">
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="<c:url value="/index.jsp"/>">Home</a></li>
            <li><a href="signup">Signup</a></li>
            <li class="active"><a href="login">Login</a></li>
            <li class="dropdown"><a href="<c:url value="/index.jsp"/>" class="dropdown-toggle"
                                    data-toggle="dropdown">More<span class="caret" style="font-weight: bold;"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="<c:url value="/index.jsp"/>">Contact Us</a></li>
                    <li class="divider"></li>
                    <li><a href="<c:url value="/index.jsp"/>">Further Actions</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>

<div class="panel panel-danger">
    <div class="panel-heading">
        <h3 class="panel-title">Login Failure</h3>
    </div>
    <div class="panel-body">
        <div class="alert alert-dismissable alert-danger">
            <button type="button" class="close" data-dismiss="alert">close</button>
            <strong>Sorry!</strong> Something is wrong. Please, try again.
        </div>
    </div>
</div>

<a class="btn btn-primary" href="login">Try
    again?</a>
</body>
</html>