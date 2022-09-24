<%--
  Created by IntelliJ IDEA.
  User: Mahbub
  Date: 9/24/2022
  Time: 11:30 PM
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
<div class="container" style="margin-top:80px">

    <h1 class="pb-2 border-bottom row">
        <span class="col-sm-6 pb-4">Customer: <span th:text="${user.id}"></span> </span>
        <span class="col-sm-6 text-sm-right pb-4">
            <form action="/user/delete" method="post" onsubmit="return confirm('Are you sure?');">
                <input type="hidden" name="id" value="${user?.id}"/>
                <button class="btn btn-danger btn-outline-danger d-block d-sm-inline-block">Delete Customer</button>
            </form>
        </span>
    </h1>


    <div class="mt-5 card card-body bg-light">

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
                    <label>Date Of Birth</label>
                    <input class="form-control" name="emailAddress" value="${user?.dateOfBirth}"/>
                </div>
                <div class="form-group col-6">
                    <label>Address</label>
                    <input class="form-control" name="phoneNumber" value="${user?.address}"/>
                </div>
            </div>

%{--            <div class="row">--}%
%{--                <div class="form-group col">--}%
%{--                    <label>Address</label>--}%
%{--                    <input class="form-control" name="address" value="${user?.address}"/>--}%
%{--                </div>--}%
%{--            </div>--}%

            %{--                <div class="row">--}%
            %{--                    <div class="form-group col-6">--}%
            %{--                        <label>City</label>--}%
            %{--                        <input class="form-control" name="city" value="${user?.city}"/>--}%
            %{--                    </div>--}%
            %{--                    <div class="form-group col-6">--}%
            %{--                        <label>Country</label>--}%
            %{--                        <input class="form-control" name="country" value="${user?.country}"/>--}%
            %{--                    </div>--}%
            %{--                </div>--}%

            <div class="row">
                <div class="col">
                    <button type="submit" class="btn btn-success btn-block">Save Changes</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>