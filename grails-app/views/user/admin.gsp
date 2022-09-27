<%--
  Created by IntelliJ IDEA.
  User: Mahbub
  Date: 9/24/2022
  Time: 11:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
%{--    <meta name="layout" content="${gspLayout ?: 'main'}">--}%
    <title></title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet"
          crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet"/>


    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>


<asset:stylesheet src="application.css"/>
</head>

<body>


<nav class="navbar navbar-expand-lg navbar-dark navbar-static-top justify-content-between" role="navigation">
    <a class="navbar-brand">User Management System</a>
    <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
        <ul class="nav navbar-nav ml-auto">
            <sec:ifLoggedIn>
                <li class="nav-link navbar-brand  px-0 mx-0">
                    <label  class="nav-link text-info">
                        Hi,
                        <sec:loggedInUserInfo field='firstName'/>
                    </label >
                </li>
                <li class="nav-link navbar-brand px-0 mx-0">
                    <a class="nav-link  px-1 mx-0" href="#" >
                        <g:form controller="logout">
                            <g:submitButton class="navbar-dark color-light" name="Submit" value="Logout" style="color: gray" />
                        </g:form>
                    </a>
                </li>
            </sec:ifLoggedIn>
        </ul>
    </div>
</nav>



    <div class="container" style="margin-top:30px">

        <h1 class="pb-2 border-bottom row">
            <span class="col-sm-6 pb-4 display-4"><em>User List</em></span>
        </h1>


        <div class="mt-4">
            <table id="customerTable" class="table table-striped table-bordered" style="width:100%">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Date Of Birth</th>
                    <th>Address</th>
                </tr>
                </thead>
            </table>
        </div>

    </div>



    <script>
        const url = '/User/data_for_datatable';
        $(document).ready(function () {
            $('#customerTable').DataTable({
                "ajax": url,
                "processing": true,
                "serverSide": true,
                "columns": [
                    {
                        "data": "id",
                        "render": function (data, type, row, meta) {
                            return '<a href="/user/edit/' + row.id + '">' + data + '</a>';
                        }
                    },
                    {
                        "data": "firstName",
                        "render": function (data, type, row, meta) {
                            return '<a href="/user/edit/' + row.id + '">' + data + '</a>';
                        }
                    },
                    {
                        "data": "lastName",
                        "render": function (data, type, row, meta) {
                            return '<a href="/user/edit/' + row.id + '">' + data + '</a>';
                        }
                    },
                    {"data": "email"},
                    {"data": "phone"},
                    {"data": "dateOfBirth"},
                    {"data": "address"},
                ]
            });
        });
    </script>


</body>
</html>