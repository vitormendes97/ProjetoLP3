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
                    <form class="col s12" method="POST" action="FrontController">
                        <input type="hidden" name="command" value="Usuario.Registrar">
                        <div class="row">
                            <div class="input-field col s6">
                                <i class="material-icons prefix">account_circle</i>
                                <input id="first_name" name="nome" type="text" class="validate">
                                <label for="first_name">Nome</label>
                            </div>
                         <div class="input-field col s6">
                                <i class="material-icons prefix">phone</i>
                                <input id="icon_telephone" type="tel" name="cel" class="validate">
                                <label for="celular">Celular</label>
                            </div>
                        </div>

                        <div class="row">


                            <div class="input-field col s6">
                                <input id="last_name" type="text" name="username" class="validate" required="required">
                                <label for="username">Username</label>
                            </div> 

                         <div class="input-field col s6">

                                <input id="email" type="email" name="email" required="required" class="validate">
                                <label for="email">Email</label>
                            </div>

                        </div>


                        <div class="row">
                            <div class="input-field col s6">
                                <input id="password" type="password" name="password" class="validate" required="required">
                                <label for="password">Password</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="password" type="password" name="password2" class="validate" required="required">
                                <label for="password">Confirm Password</label>
                            </div>

                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <p>Gênero</p>
                                <p>
                                    <input name="gender" type="radio" name="gender" id="test1" value="M" />
                                    <label for="test1">Masculino</label>
                                </p>
                                <p>
                                    <input name="gender" type="radio" id="test2" name="gender" value="F"/>
                                    <label for="test2">Feminino</label>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <label for="date">Date</label>
                            <div class="input-field col s12">
                                <input id="date" type="date" name="birth" class="validate">
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">

                                <input type="submit" value="Salvar" class="waves-effect waves-light btn" style="left:34%;" >
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
