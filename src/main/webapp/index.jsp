<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <link href="assets/css/bootstrap-united.css" rel="stylesheet"/>
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet"/>
    <style>
        body {
            background: url(assets/img/background-wallpaper.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>
</head>
<body>
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
            <li class="active"><a href="<c:url value="/index.jsp"/>">Home</a></li>
            <li><a href="webapi/studentResource/signup">Signup</a></li>
            <li><a href="webapi/studentResource/login">Login</a></li>
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
<div class="container">
    <div class="jumbotron">
        <div>
            <h1>Welcome to Home Page!</h1>

            <p>To get started, please sign up, or login to access your details, if you are already registered.</p>
        </div>

        <a class="btn btn-primary" href="webapi/studentResource/signup">Sign Up » </a>
        <a class="btn btn-primary" href="webapi/studentResource/login">Login » </a>
    </div>
</div>
<script src="jquery-2.1.4.js">
</script>

<script src="bootstrap/js/bootstrap.js">
</script>

</body>
</html>
