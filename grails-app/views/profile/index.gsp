<%--
  Created by IntelliJ IDEA.
  User: Mahbub
  Date: 9/27/2022
  Time: 6:02 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="${gspLayout ?: 'main'}">
    <title></title>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet"
          crossorigin="anonymous">
</head>

<body>
<div class="container" style="margin-top:30px">

    <h1 class="pb-0 border-bottom row">
        <span class="col-sm-6 pb-4 display-4"><em>User Information</em></span>
        <span class="col-sm-6 text-sm-right pb-4">
%{--            <form action="/user/delete" method="post" onsubmit="return confirm('Are you sure?');">--}%
%{--                <input type="hidden" name="id" value="${user?.id}"/>--}%
%{--                <button class="btn btn-danger btn-outline-danger d-block d-sm-inline-block">Delete Customer</button>--}%
%{--            </form>--}%

            <form action="#" method="post">
                <input type="hidden" name="id" value=""/>
                <button class="btn btn-danger btn-outline-info d-block d-sm-inline-block mt-2">Password Change</button>
            </form>
        </span>
    </h1>


    <div class="mt-3 card card-body bg-light">

        <form action="/user/update" class="form" method="post">

            <g:hasErrors bean="${user}">
                <div class="alert alert-danger">
                    <ul>
                        <g:eachError bean="${user}" var="error">
                            <li><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </div>
            </g:hasErrors>

            <input name="id" type="hidden" value="${user?.id}"/>

            <div class="row">
                <div class="form-group col-6">
                    <label>First Name</label>
                    <input class="form-control" name="firstName" value="${user?.firstName}"/>
                </div>
                <div class="form-group col-6">
                    <label>Last Name</label>
                    <input class="form-control" name="lastName" value="${user?.lastName}"/>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-6">
                    <label>Email Address</label>
                    <input class="form-control" name="emailAddress" value="${user?.email}"/>
                </div>
                <div class="form-group col-6">
                    <label>Phone Number</label>
                    <input class="form-control" name="phoneNumber" value="${user?.phone}"/>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-6">
                    <label for="dateOfBirth">Date Of Birth</label>
                    <input type="date" placeholder="Your First name" class="form-control" name="dateOfBirth" id="dateOfBirth" autocapitalize="none" value="${user?.dateOfBirth}"/>
                </div>
                <div class="form-group col-6">
                    <label>Address</label>
                    <input class="form-control" name="phoneNumber" value="${user?.address}"/>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <button type="submit" class="btn btn-success btn-block">Save Changes</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    document.getElementById("dateOfBirth").value = ${user?.address};
</script>

</body>
</html>