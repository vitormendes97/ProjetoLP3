<%-- 
    Document   : index
    Created on : 17-Sep-2016, 10:30:58
    Author     : SalãoVip
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
        <title>Series Project</title>

        <!-- Add to homescreen for Chrome on Android -->
        <meta name="mobile-web-app-capable" content="yes">
        <link rel="icon" sizes="192x192" href="images/android-desktop.png">

        <!-- Add to homescreen for Safari on iOS -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-title" content="Material Design Lite">
        <link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png">


        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!--        <link rel="stylesheet" href="https://code.getmdl.io/1.2.1/material.deep_purple-pink.min.css">
                <script src="https://code.getmdl.io/1.2.1/material.min.js"></script>-->
        <link href="public/css/material.css" rel="stylesheet" type="text/css"/>
        <script src="public/js/material.js" type="text/javascript"></script>
    </head>
    <body>

        <c:if test="${usuario == null}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">

            <header class="mdl-layout__header">


                <div class="mdl-layout__header-row">

                    <span class="mdl-layout-title">Series Project</span>

                    <div class="mdl-layout-spacer"></div>

                    <button id="demo-menu-lower-right"
                            class="mdl-button mdl-js-button mdl-button--icon">
                        <i class="material-icons">more_vert</i>
                    </button>

                    <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="demo-menu-lower-right">
                        <span class="mdl-layout-title" style="color:black;"><a href="FrontController?command=Usuario.Logout">Logout</a></span>
                    </ul>

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable 
                         mdl-textfield--floating-label mdl-textfield--align-right">

                        <label class="mdl-button mdl-js-button mdl-button--icon"
                               for="fixed-header-drawer-exp">
                            <i class="material-icons">search</i>
                        </label>

                        <div class="mdl-textfield__expandable-holder">
                            <input class="mdl-textfield__input" type="text" name="sample"
                                   id="fixed-header-drawer-exp">
                        </div>

                    </div>

                </div>


                <div class="mdl-layout__tab-bar mdl-js-ripple-effect">
                    <a href="#scroll-tab-1" class="mdl-layout__tab is-active">Filmes</a>
                    <a href="#scroll-tab-2" class="mdl-layout__tab">Sobre</a>
                </div>



            </header>


            <main class="mdl-layout__content">

                <section class="mdl-layout__tab-panel is-active" id="scroll-tab-1">
                    <div class="page-content">
                        <div class="demo-card-wide mdl-card mdl-shadow--2dp">
                            <div class="mdl-card__title">
                                <h2 class="mdl-card__title-text">Welcome</h2>
                            </div>
                            <div class="mdl-card__supporting-text">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Mauris sagittis pellentesque lacus eleifend lacinia...
                            </div>
                            <div class="mdl-card__actions mdl-card--border">
                                <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                                    Saiba Mais
                                </a>
                            </div>
                            <div class="mdl-card__menu">
                                <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
                                    <i class="material-icons">share</i>
                                </button>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="mdl-layout__tab-panel" id="scroll-tab-2">
                    <div class="page-content">

                    </div>
                </section>
                
            </main>



            <footer class="mdl-mini-footer">


                <div class="mdl-mini-footer__left-section">


                    <div class="mdl-logo">Title</div>


                    <ul class="mdl-mini-footer__link-list">


                        <li><a href="#">Help</a></li>
                        <li><a href="#">Privacy & Terms</a></li>

                    </ul>

                </div>

            </footer>

        </div>

    </body>

</html>
