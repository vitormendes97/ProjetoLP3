<%-- 
    Document   : login.jsp
    Created on : 28/09/2016, 19:23:34
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

        <div class="row">
            <div class="card-panel grey lighten-2">
                <div class="row">

                    <form class="col s12">
                        <div class="row ">
                            <div class="input-field col s12">
                                <input id="first_name" type="text" class="validate">
                                <label for="first_name">Usuario</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <input id="password" type="password" class="validate">
                                <label for="password">Senha</label>
                            </div>
                        </div>
                                    <div class="row">
                <div class="col s12">
                    <p>Não possui cadastro?</p>
                    <p><a href="cadastro.jsp">Cadastre-se</a></p>
                </div>
            </div>
                    </form>
                </div>
            </div>

        </div>
        
    </body>
</html>
