<%-- 
    Document   : header
    Created on : 10/09/2016, 13:34:31
    Author     : jhonn_000
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="resources/img/icone.png" type="image/x-icon">
        <meta name="viewport" content="width=device-width, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="resources/vendor/smartadmin/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="resources/vendor/smartadmin/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="resources/vendor/smartadmin/css/smartadmin-production.min.css">
        <link rel="stylesheet" type="text/css" href="resources/css/header.css">
        <link rel="stylesheet" type="text/css" href="resources/vendor/slider/flexslider.css"/>
        <link rel="stylesheet" type="text/css" href="resources/vendor/hero-slider/css/style.css">

        <title>Condoges | Gestão de condominios</title>

        <script type="text/javascript" src="resources/vendor/smartadmin/js/libs/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/libs/jquery-ui-1.10.3.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/bootstrap/bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/app.config.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/smartwidgets/jarvis.widget.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/notification/SmartNotification.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/app.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/datatables/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/datatables/dataTables.colVis.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/datatables/dataTables.colReorder.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/datatables/dataTables.tableTools.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/datatables/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/datatable-responsive/datatables.responsive.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/summernote/summernote.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/select2/select2.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/moment/moment.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/fullcalendar/jquery.fullcalendar.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/fullcalendar/pt-br.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/clockpicker/clockpicker.min.js"></script>
        <script type="text/javascript" src="resources/vendor/smartadmin/js/plugin/masked-input/jquery.maskedinput.min.js"></script>
        <script type="text/javascript" src="resources/vendor/slider/jquery.flexslider.js"></script>
        <script type="text/javascript" src="resources/vendor/hero-slider/js/main.js"></script>
    </head>
    <body>
        <header>
            <div class="navbar navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-bar-header" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar bg-color-blue"></span>
                            <span class="icon-bar bg-color-blue"></span>
                            <span class="icon-bar bg-color-blue"></span>
                        </button>
                        <a href="index.jsp"><img src="resources/img/logo.png" alt="logo"/></a>
                    </div>
                    <div class="collapse navbar-collapse" id="nav-bar-header">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="index.jsp#home">HOME</a>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:void(0)">GERENCIAL</a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="morador-visitantes.jsp">VISITANTES</a>
                                </li>
                                <li>
                                    <a href="morador-agendar-visita.jsp">AGENDAR VISITANTE</a>
                                </li>
                                <li>
                                    <a href="morador-pservico.jsp">PRESTADORES <br>DE SERVIÇOES</a>
                                </li>
                                <li>
                                    <a href="morador-agendar-pservico.jsp">AGENDAR PRESTADORES <br>DE SERVIÇOS</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="morador-financeiro.jsp">FINANCEIRO</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="morador-solicitacao.jsp"><img src="resources/img/solicitacao.png" alt="logo"/></a>
                        </li>
                        <li>
                            <a href="profile.jsp">PERFIL</a>
                        </li>
                        <li>
                            <a href="/condoges2/auth">SAIR</a>
                        </li>
                    </ul>
                </div>
                </div>
            </div>
        </header>

