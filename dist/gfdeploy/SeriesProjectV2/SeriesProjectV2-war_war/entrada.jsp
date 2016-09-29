<%-- 
    Document   : entrada.jsp
    Created on : 28/09/2016, 17:27:38
    Author     : leo_f
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link href="public/css/materialize.css" rel="stylesheet" type="text/css" media="screen,projection"/>
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

        <script src="public/js/materialize.js" type="text/javascript"></script>



        <ul id="dropdown1" class="dropdown-content">
            <li><a href="#!">one</a></li>
            <li><a href="#!">two</a></li>
            <li class="divider"></li>
            <li><a href="#!">three</a></li>
        </ul>
        <nav>
            <div class="nav-wrapper">
                <a href="#!" class="brand-logo">Logo</a>
                <ul class="right hide-on-med-and-down">
                    <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Dropdown<i class="material-icons right">arrow_drop_down</i></a></li>
                </ul>
            </div>
        </nav>
        <div class="col s12">
            <ul class="tabs blue-text">
                <li class="tab col s3 blue-text text-darken-2"><a href="#test1">Test 1</a></li>
                <li class="tab col s3 blue-text text-darken-2"><a class="active" href="#test2">Test 2</a></li>

            </ul>
        </div>
        <div id="test1" class="col s12">


        </div>
        <div id="test2" class="col s12">Test 2</div>





    </body>
    <footer class="page-footer card-panel indigo darken-2">
        <div class="container">
            <div class="row">
                <div class="col l4 offset-l2 s12">
                    <h5 class="white-text">Links</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                        <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</html>
