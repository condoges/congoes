<%-- 
    Document   : home.jsp
    Created on : 18/09/2016, 18:47:59
    Author     : jhonn_000
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<c:import url="header.jsp" />
<style>
    html, body {
        width: 100%;
        padding: 0;
        margin: 0;
        position: relative;
        background: transparent;

    }
    .navbar.navbar-fixed-top,  .navbar.navbar-fixed-top a{
        background: #fff;
    }

    .navbar.navbar-fixed-top a{
        color: #1A877B
    }   

    .content{
        width: 100%;
        background: #fff;
        position:  absolute;
        top: 500px !important;
    }

    .container-slider-no-home{
        top: 60px !important;
        position: fixed;
        width: 100%;
        z-index: -1;
        height: 350px
    }

    .content .header{
        text-align: left !important;
        padding: 20px
    }

</style>
<div class="container-slider-no-home">
    <section class="cd-hero" id="home">
        <ul class="cd-hero-slider autoplay">
            <li class="cd-bg-video selected">
                <div class="cd-full-width" style="background-image: url('resources/img/sindico2.png'); background-size: 100% auto; background-repeat: no-repeat">
                </div>
            </li>
        </ul>
    </section>
</div>
<div class="content">
    <header class="header">
        <h2><b>Painel do Sindico</b></h2>
    </header>
    <div class="container">

    </div>
</div>
</body>
</html>
