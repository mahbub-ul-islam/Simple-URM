<%--
  Created by IntelliJ IDEA.
  User: Mahbub
  Date: 9/24/2022
  Time: 11:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

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

%{--    <meta name="layout" content="${gspLayout ?: 'main'}">--}%
</head>

<body>



    <div class="container" style="margin-top:80px">

        <h1 class="pb-2 border-bottom row">
            <span class="col-sm-6 pb-4">User List</span>
        </h1>

        <g:if test="${flash.message}">
            <div class="alert alert-info">
                <h3>${flash.message}</h3>
            </div>
        </g:if>

        <div class="mt-5">
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
        var url = '/User/data_for_datatable';

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