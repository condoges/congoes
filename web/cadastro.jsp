<%-- 
    Document   : cadastro
    Created on : 11/09/2016, 14:55:18
    Author     : jhonn_000
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<c:import url="header.jsp" />
<style>
    .container{
        margin: 0 auto !important;
    }
</style>
<div class="content">
    <div class="container-slider-no-home">
        <section class="cd-hero" id="home">
            <ul class="cd-hero-slider autoplay">
                <li class="cd-bg-video selected">
                    <div class="cd-full-width">
                    </div>
                    <div class="cd-bg-video-wrapper" data-video="resources/files/videos/file2">
                        <video loop="">
                            <source src="resources/files/videos/file2.mp4" type="video/mp4">
                            <source src="resources/files/videos/file2.webm" type="video/webm">
                        </video>
                    </div>
                </li>
            </ul>
        </section>
    </div>
    <header class="header">
        <h2><b>Cadastre-se e Ganhe 15 Dias Grátis.</b></h2>
    </header>
    <div class="container">
        <form class="smart-form col-md-12 col-sm-12" method="POST" action="condominio">
            <header>
                <p><b>Informações do Sindico ou Administrador do Sistema</b></p>
            </header>
            <fieldset>
                <div class="row">
                    <section class="col col-4">
                        <label class="label">Nome</label>
                        <label class="input">
                            <i class="icon-prepend fa fa-user"></i>
                            <input type="text" name="nome" id="nome">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Data de Nascimento</label>
                        <label class="input">
                            <i class="icon-prepend fa fa-calendar"></i>
                            <input type="text" name="data-nascimento" class="datepicker" data-dateformat='dd/mm/yy' id="data-nascimento">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">CPF</label>
                        <label class="input">
                            <i class="icon-prepend fa fa-exclamation-circle"></i>
                            <input type="text" name="cpf" id="cpf" data-mask="999.999.999-99">
                        </label>
                    </section>
                </div>
                <div class="row">
                    <section class="col col-4">
                        <label class="label">E-mail</label>
                        <label class="input">
                            <i class="icon-prepend fa fa-envelope-o"></i>
                            <input type="email" name="email" id="email">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Celular</label>
                        <label class="input"> 
                            <i class="icon-prepend fa fa-mobile-phone"></i>
                            <input type="tel" name="celular" id="celular" placeholder="(xx)xxxxx-xxxx" data-mask="(99)99999-9999">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Telefone</label>
                        <label class="input"> 
                            <i class="icon-prepend fa fa-phone"></i>
                            <input type="tel" name="telefone" id="telefone" placeholder="(xx)xxxx-xxxx" data-mask="(99)9999-9999">
                        </label>
                    </section>
                </div>
                <div class="row">
                    <section class="col col-4">
                        <label class="label">Senha</label>
                        <label class="input"> 
                            <i class="icon-prepend fa fa-lock"></i>
                            <input type="password" name="password" id="password1">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Digite Novamente</label>
                        <label class="input"> 
                            <i class="icon-prepend fa fa-lock"></i>
                            <input type="password" name="password" id="password2">
                        </label>
                    </section>
                </div>
            </fieldset>
            <header>
                <p><b>Informações do Condominio</b></p>
            </header>
            <fieldset>
                <div class="row">
                    <section class="col col-4">
                        <label class="label">Logradouro</label>
                        <label class="input">
                            <input type="text" name="logradouro" id="logradouro">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Numero</label>
                        <label class="input">
                            <input type="text" name="numero" id="numero">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Bairro</label>
                        <label class="input">
                            <input type="text" name="bairro" id="bairro">
                        </label>
                    </section>
                </div>
                <div class="row">
                    <section class="col col-4">
                        <label class="label">Cep</label>
                        <label class="input">
                            <input type="text" name="cep" id="cep">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Cidade</label>
                        <label class="input">
                            <input type="text" name="cidade" id="cidade">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Estado</label>
                        <label class="select">
                            <select name="estado">
                                <option selected="" disabled=""></option>
                                <option value="AC">AC</option>	
                                <option value="AL">AL</option>	
                                <option value="AP">AP</option>	
                                <option value="AM">AM</option>	
                                <option value="BA">BA</option>	
                                <option value="CE">CE</option>	
                                <option value="DF">DF</option>	
                                <option value="ES">ES</option>	
                                <option value="GO">GO</option>	
                                <option value="MA">MA</option>	
                                <option value="MT">MT</option>	
                                <option value="MS">MS</option>	
                                <option value="MG">MG</option>	
                                <option value="PA">PA</option>	
                                <option value="PB">PB</option>	
                                <option value="PR">PR</option>	
                                <option value="PE">PE</option>	
                                <option value="PI">PI</option>	
                                <option value="RJ">RJ</option>	
                                <option value="RN">RN</option>	
                                <option value="RS">RS</option>	
                                <option value="RO">RO</option>	
                                <option value="RR">RR</option>	
                                <option value="SC">SC</option>	
                                <option value="SP">SP</option>	
                                <option value="SE">SE</option>	
                                <option value="TO">TO</option>
                            </select><i></i>
                        </label>
                    </section>
                </div>
                <div class="row">
                    <section class="col col-4">
                        <label class="label">Nome Contato</label>
                        <label class="input">                           
                            <i class="icon-prepend fa fa-user"></i>
                            <input type="text" name="contato" id="contato">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Telefone 1</label>
                        <label class="input">
                            <i class="icon-prepend fa fa-phone"></i>
                            <input type="tel" name="telefone1" placeholder="(xx)xxxx-xxxx" data-mask="(99)9999-9999" id="telefone1">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Telefone 2</label>
                        <label class="input">
                            <i class="icon-prepend fa fa-phone"></i>
                            <input type="tel" name="telefone2" placeholder="(xx)xxxx-xxxx" data-mask="(99)9999-9999" id="telefone2">
                        </label>
                    </section>
                </div>
                <div class="row">
                    <section class="col col-4">
                        <label class="label">Cnpj</label>
                        <label class="input">
                            <input type="text" name="cnpj" id="cnpj" data-mask="99.999.999/9999-99">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Razão Social</label>
                        <label class="input">
                            <input type="text" name="razao-social" id="razao-social">
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Nome Fantasia</label>
                        <label class="input">
                            <input type="text" name="nome-fantasia" id="nome-fantasia">
                        </label>
                    </section>
                </div>
                <div class="row">
                    <section class="col col-4">
                        <label class="label">Tipo</label>
                        <label class="select">
                            <select name="tipo">
                                <option selected="" disabled=""></option>
                                <option value="vertical" selected="">Condominio Vertical</option>
                                <option value="horizontal">Condominio Horizontal</option>	
                            </select><i></i>
                        </label>
                    </section>
                    <section class="col col-4">
                        <label class="label">Pacote</label>
                        <label class="select">
                            <select name="pacote">
                                <option value="3">1 a 100 Usuarios</option>
                                <option value="4">101 a 500 Usuarios</option>	
                                <option value="5">501 ou mais Usuarios</option>	
                            </select><i></i>
                        </label>
                    </section>
                </div>
            </fieldset>
            <footer>
                <button class="btn btn-success">Cadastrar</button>
            </footer>
        </form>
    </div>
</div>
<script>
    $(document).ready(function () {
        pageSetUp();
    });
</script>
</body>
</html>