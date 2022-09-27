<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/jquery-ui.min.js"></script>


    <script src=
            "https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.js">
    </script>

    <script src=
            "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.js">
    </script>

    <link href=
          "http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/ui-lightness/jquery-ui.css"
          rel="stylesheet" type="text/css" />

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

<g:layoutBody/>

</body>
</html>
