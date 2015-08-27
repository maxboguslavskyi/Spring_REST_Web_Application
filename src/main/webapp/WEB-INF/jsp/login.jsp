<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="../../assets/css/bootstrap-united.css" rel="stylesheet"/>

    <title>Login Page</title>
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

<div class="container">
    <div class="jumbotron">
        <div>
            <h1>Welcome to Login Page</h1>

            <p>Login to explore the complete features!</p>
        </div>
    </div>
</div>

<div class="col-lg-6 col-lg-offset-3">
    <div class="well">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <form:form id="myForm" method="post" action="login"
                               class="bs-example form-horizontal">
                        <fieldset>
                            <legend>Login Form</legend>

                            <div class="form-group">
                                <label for="userNameInput" class="col-lg-3 control-label">User Name</label>

                                <div class="col-lg-9">
                                    <input type="text" class="form-control" name="userName"
                                           id="userNameInput" placeholder="User Name"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="passwordInput" class="col-lg-3 control-label">Password</label>

                                <div class="col-lg-9">
                                    <input type="password" class="form-control"
                                           name="password" id="passwordInput" placeholder="Password"/>
                                </div>
                            </div>

                            <div class="col-lg-9 col-lg-offset-3">
                                <button class="btn btn-default">Cancel</button>

                                <button class="btn btn-primary">Login</button>
                            </div>
                        </fieldset>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>