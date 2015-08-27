<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign Up Page</title>
    <link href="../../bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <link href="../../datepicker/css/datepicker.css" rel="stylesheet"/>
    <link href="../../assets/css/bootstrap-united.css" rel="stylesheet"/>

    <style>
        .green {
            font-weight: bold;
            color: green;
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
            <li><a href="<c:url value="/index.jsp"/>">Home</a></li>
            <li class="active"><a href="signup">Sign Up</a></li>
            <li><a href="login">Login</a></li>
            <li class="dropdown"><a href="<c:url value="/index.jsp"/>" class="dropdown-toggle"
                                    data-toggle="dropdown">More<span class="caret" style="font-weight: bold;"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="<c:url value="/index.jsp"/>">Contact us</a></li>
                    <li class="divider"></li>
                    <li><a href="<c:url value="/index.jsp"/>">Further Actions</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>

<script src="../../jquery-2.1.4.js">
</script>

<script src="../../bootstrap/js/bootstrap.js">
</script>

<script src="../../datepicker/js/bootstrap-datepicker.js">
</script>


<div class="container">
    <div class="jumbotron">
        <div>
            <h1>Welcome to Sign Up Page</h1>

            <p>Please, enter your details...</p>
        </div>
    </div>
</div>

<c:if test="${not empty it.message}">
    <div class="green">${it.message}</div>
</c:if>

<div class="col-lg-6 col-lg-offset-3">
    <div class="well">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <form:form id="myForm" method="post" action="signup"
                               class="bs-example form-horizontal">
                        <fieldset>
                            <legend>Sign Up Form</legend>

                            <div class="form-group">
                                <label for="userNameInput" class="col-lg-3 control-label">User Name</label>

                                <div class="col-lg-9">
                                    <input type="text" class="form-control" name="userName"
                                           id="userNameInput" placeholder="User Name"
                                           value="${it.student.userName}"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="passwordInput" class="col-lg-3 control-label">Password</label>

                                <div class="col-lg-9">
                                    <input type="password" class="form-control" name="password"
                                           id="passwordInput" placeholder="Password"
                                           value="${it.student.password}"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="firstNameInput" class="col-lg-3 control-label">First Name</label>

                                <div class="col-lg-9">
                                    <input type="text" class="form-control" name="firstName"
                                           id="firstNameInput" placeholder="First Name"
                                           value="${it.student.firstName}"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="lastNameInput" class="col-lg-3 control-label">Last Name</label>

                                <div class="col-lg-9">
                                    <input type="text" class="form-control" name="lastName"
                                           id="lastNameInput" placeholder="Last Name"
                                           value="${it.student.lastName}"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="dateOfBirthInput" class="col-lg-3 control-label">Date of Birth</label>

                                <div class="date form_date col-lg-9"
                                     data-date-format="mm/dd/yyyy" data-date-viewmode="years">
                                    <c:set var="myDate">
                                        <fmt:formatDate pattern="MM/dd/yyyy"
                                                        value="${it.student.dateOfBirth}"/>
                                    </c:set>
                                    <input type="text" class="form-control" name="dateOfBirth"
                                           id="dateOfBirthInput" placeholder="Date of Birth"
                                           value="${myDate}"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="emailAddressInput" class="col-lg-3 control-label">Email Address</label>

                                <div class="col-lg-9">
                                    <input type="text" class="form-control" name="emailAddress"
                                           id="emailAddressInput" placeholder="Email Address"
                                           value="${it.student.emailAddress}"/>
                                </div>
                            </div>

                            <div class="col-lg-9 col-lg-offset-3">
                                <button class="btn btn-default">Cancel</button>

                                <button class="btn btn-primary" data-toggle="modal"
                                        data-target="#themodal">Submit
                                </button>
                                <div id="themodal" class="modal fade" data-backdrop="static">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-hidden="true">&times;</button>
                                                <h3>Sign Up Form Submission</h3>
                                            </div>
                                            <div class="modal-body">
                                                <p>Are you sure you want to do this?</p>

                                                <div class="progress progress-striped active">
                                                    <div id="doitprogress" class="progress-bar"></div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
                                                <input type="submit" value="Yes" id="yesbutton"
                                                       class="btn btn-primary" data-loading-text="Saving..."
                                                       data-complete-text="Submit Complete!">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(function () {
        $('#dateOfBirthInput').datepicker();
    });
</script>

<script type="text/javascript">
    $(function () {
        var yesButton = $("#yesbutton");
        var progress = $("#doitprogress");

        yesButton.click(function () {
            yesButton.button("loading");

            var counter = 0;
            var countDown = function () {
                counter++;
                if (counter == 11) {
                    yesButton.button("complete");
                } else {
                    progress.width(counter * 10 + "%");
                    setTimeout(countDown, 100);
                }
            };

            setTimeout(countDown, 100);
        });

    });
</script>

</body>
</html>