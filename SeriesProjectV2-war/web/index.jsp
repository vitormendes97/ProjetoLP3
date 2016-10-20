<%-- 
    Document   : entrada.jsp
    Created on : 28/09/2016, 17:27:38
    Author     : leo_f
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>

        <!--Import materialize.css-->
        <!-- <link href="public/css/materialize.css" rel="stylesheet" type="text/css" media="screen,projection"/> -->
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script src="public/js/functions.js" type="text/javascript"></script>
        <script src="public/js/FunctionsController.js" type="text/javascript"></script>
    </head>

    <body>
        <!--Import jQuery before materialize.js-->


        <script src="public/js/materialize.js" type="text/javascript"></script>



        <ul id="dropdown1" class="dropdown-content">
            <li id="settings"><a class="waves-effect waves-light modal-trigger"  href="#modal2" >settings</a></li>
            <li class="divider"></li>
            <li><a href="FrontController?command=Usuario.Logout">Logout</a></li>
        </ul>

        <nav>
            <div class="nav-wrapper">
                <a href="index.jsp" class="brand-logo">Series Project 1.1</a>
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




        <div id="modal2" class="modal modal-fixed-footer">
            <div class="modal-content">
                <h4>Modal Header</h4>
                <p>A bunch of text</p>
            </div>
            <div class="modal-footer">
                <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Agree</a>
            </div>
        </div>

    </body>
</html>
