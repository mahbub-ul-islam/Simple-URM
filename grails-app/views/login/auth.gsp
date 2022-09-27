<%--
  Created by IntelliJ IDEA.
  User: Mahbub
  Date: 9/24/2022
  Time: 10:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="${gspLayout ?: 'main'}">
    <title>
        <g:message code="springSecurity.login.title"/>
    </title>
</head>

<body>
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5">
                <div class="card-body">
                    <h5 class="card-title text-center">Please Login</h5>
                    <g:if test='${flash.message}'>
                        <div class="alert alert-danger" role="alert">${flash.message}</div>
                    </g:if>
                    <form class="form-signin" action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" autocomplete="off" onsubmit="return validateForm()">
                        <div class="form-group">
                            <label for="username">Email</label>
                            <input type="email" class="form-control" name="${usernameParameter ?: 'username'}" id="email" autocapitalize="none"/>
                            <div class="" id="emailMsg"></div>
                        </div>

                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" name="${passwordParameter ?: 'password'}" id="password"/>
                            <div class="" id="passwordMsg"></div>
                            <i id="passwordToggler" title="toggle password display" onclick="passwordDisplayToggle()">&#128065;</i>
                        </div>

                        <div class="form-group form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/> Remember me
                            </label>
                        </div>
                        <button id="submit" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
                        <hr class="my-4">
                        <p>Don't have an account? <g:link controller="register">Register</g:link></p>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script>

        function validateForm()
        {
            let x = document.forms["loginForm"]["email"].value;
            let y = document.forms["loginForm"]["password"].value;

            if (x == "") {
                console.log("Hello")
                // alert("Name must be filled out");
                $("#emailMsg").html("Email must be filled out").css("color", "blue");
                $("#firstNameMsg").focus();
                return false;
            } else {
                $("#firstNameMsg").html("");
                // return true;
            }
            if (y == "") {
                // alert("Password must be filled out");
                $("#passwordMsg").html("Password must be filled out").css("color", "blue");
                $("#passwordMsg").focus();
                return false;
            } else {
                $("#firstNameMsg").html("");
                // return true;
            }
        }


    </script>
</body>
</html>