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
        <link href="public/css/custom.css" rel="stylesheet" type="text/css"/>
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>

        <!--Import materialize.css-->
        <!-- <link href="public/css/materialize.css" rel="stylesheet" type="text/css" media="screen,projection"/> -->
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script src="public/js/custom.js" type="text/javascript"></script>
    </head>

    <body>
        <!--Import jQuery before materialize.js-->
        <c:if test="${u == null}">
            <c:redirect url="login.jsp"></c:redirect>
         </c:if>

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
                    <li><a href="#!">Filmes</a></li>
                    <li><a href="#!">Avaliação</a></li>
                    <li><a href="#!">Sobre</a></li>
                    <li><a class="dropdown-button" href="#!" data-activates="dropdown1"><i class="large material-icons">perm_identity</i><i class="material-icons right">arrow_drop_down</i></a></li>
                </ul>
            </div>
        </nav>
        
        
        
        <div class="row">
        <div class="col s3 m6 ">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Card Title</span>
              <p>I am a very simple card. I am good at containing small bits of information.
              I am convenient because I require little markup to use effectively.</p>
            </div>
            <div class="card-action">
              <a href="#">This is a link</a>
              <a href="#">This is a link</a>
            </div>
          </div>
        </div>
            
        <div class="col s3 m6">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Card Title</span>
              <p>I am a very simple card. I am good at containing small bits of information.
              I am convenient because I require little markup to use effectively.</p>
            </div>
            <div class="card-action">
              <a href="#">This is a link</a>
              <a href="#">This is a link</a>
            </div>
          </div>
        </div>
            
            <div class="col s3 m6">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Card Title</span>
              <p>I am a very simple card. I am good at containing small bits of information.
              I am convenient because I require little markup to use effectively.</p>
            </div>
            <div class="card-action">
              <a href="#">This is a link</a>
              <a href="#">This is a link</a>
            </div>
          </div>
        </div>
            
            <div class="col s3 m6">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Card Title</span>
              <p>I am a very simple card. I am good at containing small bits of information.
              I am convenient because I require little markup to use effectively.</p>
            </div>
            <div class="card-action">
              <a href="#">This is a link</a>
              <a href="#">This is a link</a>
            </div>
          </div>
        </div>
            
      </div>




        <div id="modal2" class="modal modal-fixed-footer">
            <div class="modal-content">

                <div class="row">
                    <div class="col s12">
                        <ul class="tabs">
                            <li class="tab col s3"><a href="#test1">Profile</a></li>
                            <li class="tab col s3"><a class="active" href="#test2">Test 2</a></li>
                            <li class="tab col s3 disabled"><a href="#test3">Disabled Tab</a></li>
                            <li class="tab col s3"><a href="#test4">Test 4</a></li>
                        </ul>
                    </div>
                    
                    <div class="row">
                        
                        <div class="row">
                            <div class="col s6">
                                <p>Bem vindo ${usuario.username} . Deseja Editar suas informações?  
                                    <a id="btn-editar" onclick="toggleReadOnly()" class="waves-effect waves-light btn"><i class="material-icons left">mode_edit</i>Editar</a>
                                </p>
                            </div>
                        </div>
                        
                        <div id="test1" class="col s6">
                            <label for="Nome">Nome : </label>
                        <input type="text" class="input-test" name="nome" id="nome" readonly="readonly">
                        </div>
                         <div id="test1" class="col s6">
                            <label for="Email">Email : </label>
                        <input type="email" class="input-test" name="email" id="email" readonly="readonly">
                        </div>
                        
                        <div class="row">
                            <div class="col s6">
                                 <label for="Celular">Celular : </label>
                                  <input type="text" class="input-test" name="celular" id="celular" readonly="readonly">
                            </div>
                             <div class="col s6">
                                 <label for="Data">Data de Nascimento : </label>
                                 <input type="text" class="input-test" name="datanasc" id="datanasc" readonly="readonly">
                            </div>
                            
                        </div>
                        
                            <div class="row">
                            <div class="col s6">
                                 <label for="Usuario">Usuario : </label>
                                  <input type="text" class="input-test" name="username" readonly="readonly">
                            </div>
                             <div class="col s6">
                                 <label for="Data">Senha : </label>
                                 <input type="password" value="teste" id="senha" class="input-test" name="password" readonly="readonly">
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="modal-footer">
                <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Agree</a>
            </div>
        </div>

    </body>
</html>
