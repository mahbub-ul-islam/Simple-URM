<%--
  Created by IntelliJ IDEA.
  User: Mahbub
  Date: 9/24/2022
  Time: 10:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="${gspLayout ?: 'main'}"/>
    <title>Register</title>


</head>

<body>

    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5">
                <div class="card-body">
                    <h5 class="card-title text-center">Register Here</h5>
                    <g:if test='${flash.message}'>
                        <div class="alert alert-danger" role="alert">${flash.message}</div>
                    </g:if>
                    <form class="form-signin" action="register" method="POST" id="loginForm" autocomplete="off" onsubmit="return validateForm()">

                        <div class="form-group">
                            <label for="firstName">First Name</label>
                            <input type="text" placeholder="Your First name" class="form-control" name="firstName" id="firstName" autocapitalize="none"/>
                            <div class="" id="firstNameMsg"></div>
                        </div>

                        <div class="form-group">
                            <label for="lastName">Last Name</label>
                            <input type="text" placeholder="Your Last name" class="form-control" name="lastName" id="lastName" autocapitalize="none"/>
                        </div>

                        <div class="form-group">
                            <label class="h5" for="email">Email</label>
                            <input type="email" placeholder="Your Email Address" class="form-control" name="email" id="email" autocapitalize="none"/>
                            <div class="" id="msg">Email must be unique.</div>
                        </div>

                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" placeholder="Your password" class="form-control" name="password" id="password"/>
                            <div class="" id="passwordMsg"></div>
                        </div>

                        <div class="form-group">
                            <label for="password">Re-Enter Password</label>
                            <input type="password" placeholder="Re-enter password" class="form-control" name="repassword" id="repassword"/>
                        </div>

                        <div class="form-group">
                            <label for="address">Address</label>
                            <input type="text" placeholder="Your Address" class="form-control" name="address" id="address" autocapitalize="none"/>
                        </div>

                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input type="text" placeholder="Your Phone" class="form-control" name="phone" id="phone" autocapitalize="none"/>
                        </div>

                        <div class="form-group">
                            <label for="dateOfBirth">Date Of Birth</label>
                            <input type="date" placeholder="Your First name" class="form-control" name="dateOfBirth" id="dateOfBirth" autocapitalize="none"/>
                        </div>

                        <button id="submit" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Register</button>
                        <hr class="my-4">
                        <p>Already have an account? <g:link controller="login" action="auth">Login</g:link></p>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">

        $('.datepicker').datepicker({
            format: 'mm/dd/yyyy',
            startDate: '-3d'
        });

        document.addEventListener("DOMContentLoaded", function(event) {
            document.forms['loginForm'].elements['firstName'].focus();
        });

        document.getElementById("loginForm").onkeypress = function(e) {
            var key = e.charCode || e.keyCode || 0;
            if (key == 13) {
                // alert("No Enter!");
                e.preventDefault();
            }
        }

        function validateForm() {
            let x = document.forms["loginForm"]["firstName"].value;
            let y = document.forms["loginForm"]["password"].value;
            let z = document.forms["loginForm"]["email"].value;
            if (x == "") {
                $("#firstNameMsg").html("Name must be filled out").css("color", "blue");
                $("#firstNameMsg").focus();
                return false;
            } else {
                $("#firstNameMsg").html("");
            }
            if (y == "") {
                $("#passwordMsg").html("Password must be filled out").css("color", "blue");
                $("#passwordMsg").focus();
                return false;
            } else {
                $("#firstNameMsg").html("");
            }
            if (z == "") {
                $("#msg").html("Email must be unique.").css("color", "blue");
                $("#msg").focus();
                return false;
            }else {
                $("#msg").html("");
            }
        }


        $("#email").blur(function() {
            const email = $("#email").val();

            if (email.length > 0) {
                $.ajax({
                    type: "POST",
                    url: "/Register/emailValidation",
                    data: "email=" + email,
                    cache: false,
                    success: function (msgRet) {
                        $("#msg").html("Username already taken").css("color", "red");
                        $("#submit").disable();
                    },
                    error: function() {
                        $("#msg").html("Username available").css("color", "green");
                    }
                });
            } else {
                    $("#msg").html("Email must be filled out").css("color", "blue");
                    return false;
            }
        });


    </script>
</body>
</html>