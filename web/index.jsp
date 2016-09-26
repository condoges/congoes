<%-- 
    Document   : index
    Created on : 10/09/2016, 09:46:33
    Author     : jhonn_000
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<style>
    body, html{
        background: #fff !important
    }
    .container{
        margin-top: 0 !important;
        padding-top: 0 !important
    }
</style>

<c:import url="header.jsp" />
<div class="container-slider">
    <section class="cd-hero" id="home">
        <ul class="cd-hero-slider autoplay">
            <li class="cd-bg-video selected">
                <div class="cd-full-width">
                    <h1>Bem-vindo ao Condoges</h1>
                    <h3>Gerencie seu condominio, de forma f�cil e objetiva</h3>
                    <p>A melhor ferramenta para sindicos e administradoras
                        <br>Seu condominio nas m�os de quem entende!</p>
                    <a href="cadastro.jsp" class="cd-btn">Experimente Gr�tis por 15 Dias</a>
                </div>
                <div class="cd-bg-video-wrapper" data-video="resources/files/videos/file3">
                </div>
            </li>
        </ul>
    </section>
</div>
<div class="container">
    <section id="section-1" class="clearfix">
        <h1><b>Condoges-S � a Solu��o Online Para Administra��o de Condom�nios.</b></h1>
        <div class="col-md-12 col-sm-12">
            <div class="col-lg-5 col-md-6 col-sm-12 no-padding">
                <img class="img-thumbnail img-responsive" src="resources/img/sindico.png" alt="imagem ilustrativa  sindico">
            </div>
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2><b>Para S�ndicos, Administradoras e Escrit�rios Cont�beis!</b></h2>
                <p>Apresentamos o Condoges, um sistema de gest�o de condom�nios que foi desenvolvido para melhorar a qualidade de vida de s�ndicos, administradores e moradores, com uma interface amig�vel e intuitiva, est� sempre um passo a frente de seus concorrentes de mercado, oferecendo uma ferramenta de trabalho capaz de economizar tempo e dinheiro aliado a um visual limpo e inovador.</p>
                <p>Projetado para suportar imensur�vel quantidade de informa��es dos mais diversos tipos de condom�nios, unindo as funcionalidades do que existe em gest�o para condom�nios, e agregando o que s� a experi�ncia de quem entende do assunto pode oferecer.</p>
            </div>
        </div>
    </section>
    <section id="section-2" class="clearfix">
        <div class="col-md-12 col-sm-12">
            <div class="row">
                <div class="col-md-4 col-sm-12 item-1">
                    <h1><b>S�ndicos</b></h1>
                    <img src="resources/img/sindico2.png" class="img-responsive img-thumbnail" alt="imagem ilustrativa sindico">
                    <p>Cadastros de moradores, carros, animais, visitantes, funcion�rios, fornecedores, prestatores de servi�os, reservas de �rea comum, lan�ar um informativo para os moradores, al�m de gerar boletos para os moradores</p>
                </div>
                <div class="col-md-4 col-sm-12 item-2">
                    <h1><b>Porteiro</b></h1>
                    <img src="resources/img/porteiro.png" class="img-responsive img-thumbnail" alt="imagem ilustrativa proteiro">
                    <p>Com a tela do porteiro, poder� registrar cada pessoa que entra e sai do condom�nio, com seu respectivo carro e placa.</p>
                </div>
                <div class="col-md-4 col-sm-12 item-3">
                    <h1><b>Moradores</b></h1>
                    <img src="resources/img/morador.png" class="img-responsive img-thumbnail" alt="imagem ilustrativa moradores">
                    <p>Saiba quem entra e sai do seu condom�nio, n�o atrase seu pagamento, imprima seus boletos direto do nosso sistema.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-12 item-1">
                    <h1><b>F�cil</b></h1>
                    <img src="resources/img/facil.png" class="img-responsive img-thumbnail" alt="imagem ilustrativa das facilidades do software">
                    <p>Execute tarefas diversas de administra��o de um ou v�rios condom�nios em poucos cliques. Seja s�ndico ou administradora de condom�nios.</p>
                </div>
                <div class="col-md-4 col-sm-12 item-2">
                    <h1><b>Moderno</b></h1>
                    <img src="resources/img/moderno.png" class="img-responsive img-thumbnail" alt="imagem ilustrativa moradores">
                    <p>Desenvolvido com tecnologia de ponta (Cloud Computing), utilizada pelas principais institui��es financeiras do mundo, garantindo a integridade e a seguran�a de suas informa��es.</p>
                </div>
                <div class="col-md-4 col-sm-12 item-3">
                    <h1><b>Objetivo</b></h1>
                    <img src="resources/img/objetivo.png" class="img-responsive img-thumbnail" alt="imagem ilustrativa moradores">
                    <p>N�o h� risco de perda de dados, problemas com v�rus ou backup, e tudo pode ser controlado de qualquer computador com acesso a internet sem limita��es, pois o Condoges-S � totalmente online e seguro.</p>
                </div>
            </div>
        </div>
    </section>
    <section id="section-3" class="clearfix">
        <h1 id="empresa"><b>A Condoges</b></h1>
        <div class="col-md-12 col-sm-12">
            <div class="col-md-7 col-sm-12 no-padding" id="quem-somos">
                <div>
                    <p>A constante expans�o do mercado imobili�rio no Brasil tem tornado os im�veis atrativas fontes de renda para construtores, propriet�rios e administradores. O aproveitamento de espa�os em pequenas e grandes cidades leva a incorpora��o di�ria de milhares de condom�nios.</p>
                    <p>Ent�o percebe-se a necessidade de gerenciar de forma eficiente, transparente e segura, edifica��es cada vez mais complexas, que necessitam ser tratadas como verdadeiras empresas, e n�o apenas como um conglomerado de unidades.</p>
                    <p>Com base nestes fatos, e ap�s anos de estudo e pesquisa surge a Condoges. Uma startup no desenvolvimento de software que oferece a solu��o definitiva em gest�o para condom�nios, o Condoges-S.</p>
                    <p>Condoges-S � solu��o para s�ndicos aut�nomos, condom�nios individuais, escrit�rios cont�beis e administradoras de condom�nio.</p>
                    <p><b>Vis�o</b></p>
                    <ul>
                        <li>Oferecer com efici�ncia solu��es em gest�o de condom�nios, demonstrando comprometimento e respeito �s necessidades de nossos clientes.</li>
                    </ul>
                    <p><b>Miss�o</b></p>
                    <ul>
                        <li>Ser refer�ncia nacional no desenvolvimento de software especialista em gest�o para condom�nios.</li>
                    </ul>
                    <p><b>Valores</b></p>
                    <ul>
                        <li>Excel�ncia no atendimento ao cliente</li>
                        <li>Qualidade no desenvolvimento do produto</li>
                        <li>�tica, seriedade e transpar�ncia</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-5 col-sm-12">
                <img src="resources/img/condoges-dicas.png" class="img-responsive img-thumbnail" alt="imagem ilustrativa condoges">
                <img src="resources/img/condoges-dicas2.png" class="img-responsive img-thumbnail hidden-sm hidden-xs" alt="imagem ilustrativa condoges">
            </div>
        </div>
    </section>
    <section id="section-7" class="clearfix">
        <h1><b>Onde estamos</b></h1>
        <div class="col-md-12 col-sm-12 no-padding" id="onde-estamos">
            <div class="col-md-5 col-sm-12">
                <img src="resources/img/mapa.png" class="img-responsive" alt="mapa de clientes brasil">
            </div>
            <div class="col-md-7 col-sm-12">
                <p><b>Nossos N�meros</b></p>
                <ul>
                    <li>Presente em 23 estados do Brasil.</li>
                    <li>Atendemos mais de 182 cidades brasileiras.</li>
                    <li>Mais de 3700 Condom�nios s�o administrados com o uso do Condoges-S.</li>
                    <li>Mais de 265 mil cond�minos est�o cadastros em nossa base.</li>
                    <li>Cerca de 17 mil moradores acessam diariamente o Portal do Cond�mino.</li>
                    <li>Em m�dia 80 mil t�tulos s�o processados diariamente atrav�s do Condoges.</li>
                    <li>Quase 650 usu�rios utilizam nosso sistema em suas tarefas di�rias</li>
                </ul>
            </div>
        </div>
    </section>
    <section id="section-4" class="clearfix">
        <h1><b> Planos & Pre�os</b></h1>
        <div class="col-md-12 col-sm-12" id="precos">
            <h2><b>Planos para Administradoras e Condom�nios de todos os tamanhos</b></h2>
            <div class="col-md-3 col-sm-6">
                <div class="item-1">
                    <h1>Trial<br>&nbsp</h1>
                    <h2>Gr�tis*</h2>
                    <p>Todas as funcionalidades.</p>
                    <p>Cadastro ilimitado de moradores.</p>
                    <div class="note bottom-left">Disponivel por apenas <small>15</small> dias a partir da data de cadastro.</div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6c">
                <div class="item-2">
                                <h1>Condominio de Pequeno Porte</h1>
                    <h2><small>R$</small> 0,50/Usuario*</h2>
                    <p>Todas as funcionalidades.</p>
                    <p>Cadastro de 1 a 100 Usuarios.</p>
                    <div class="note bottom-left">Cobran�a mensal de <small>R$</small> 0,50 por cada usuario cadastrado no sistema.</div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="item-3">
                    <h1>Condomino de M�dio Porte</h1>
                    <h2><small>R$</small> 0,45/Usuario*</h2>
                    <p>Todas as funcionalidades.</p>
                    <p>Cadastro de 101 a 500 Usuarios.</p>
                    <div class="note bottom-left">Cobran�a mensal de <small>R$</small> 0,45 por cada usuario cadastrado</div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="item-4">
                    <h1>Condomino de Grande Porte</h1>
                    <h2><small>R$</small> 0,40/Usuario*</h2>
                    <p>Todas as funcionalidades.</p>
                    <p>Cadastro de 501 ou mais Usuarios.</p>
                    <div class="note bottom-left">Cobran�a mensal de <small>R$</small> 0,40 por cada usuario cadastrado</div>
                </div>
            </div>
        </div>
    </section>  

    <section id="section-6" class="clearfix">
        <h1><b> Nossos Clientes</b></h1>
        <div class="col-md-12 col-sm-12" id="nossos-clientes">
            <div class="row">
                <div class="col-md-3 col-sm-4">
                    <img src="resources/img/Cli4349.jpg" class="img-responsive img-thumbnail">
                    <h4>Terrazza Consultoria Imobili�ria e Administra��es Ltda</h4>
                    <p>S�o Jos� dos Pinhais - PR</p>
                </div>
                <div class="col-md-3 col-sm-4">
                    <img src="resources/img/Cli4960.jpg" class="img-responsive img-thumbnail">
                    <h4>ARZ Imobiliaria Ltda (Imobiliaria Ativa)</h4>
                    <p>Toledo - PR</p>
                </div>
                <div class="col-md-3 col-sm-4">
                    <img src="resources/img/Cli4254.jpg" class="img-responsive img-thumbnail">
                    <h4>Oas Administra��o de Condom�nios Ltda ME</h4>
                    <p>Alagoinhas - BA</p>
                </div>
                <div class="col-md-3 hidden-sm hidden-xs">
                    <img src="resources/img/Cli4433.jpg" class="img-responsive img-thumbnail">
                    <h4>Condom�nio Residencial Espace</h4>
                    <p>Arapiraca - AL</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-4">
                    <img src="resources/img/Cli5608.jpg" class="img-responsive img-thumbnail">
                    <h4>Borges e Guimar�es Administradora de Condom�nios Ltda - ME</h4>
                    <p>Arax� - MG</p>
                </div>
                <div class="col-md-3 col-sm-4">
                    <img src="resources/img/Cli5329.jpg" class="img-responsive img-thumbnail">
                    <h4>Urbana Gest�o Condominial</h4>
                    <p>Sorocaba - SP</p>
                </div>
                <div class="col-md-3 col-sm-4">
                    <img src="resources/img/Cli4915.jpg" class="img-responsive img-thumbnail">
                    <h4>Parque Barra da Tijuca</h4>
                    <p>Barretos - SP</p>
                </div>
                <div class="col-md-3 hidden-sm hidden-xs">
                    <img src="resources/img/Cli4024.jpg" class="img-responsive img-thumbnail">
                    <h4>Condom�nio Edf Porto Vallarta</h4>
                    <p>Macei� - AL</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-4">
                    <img src="resources/img/Cli4703.jpg" class="img-responsive img-thumbnail">
                    <h4>Atto Incoorporadora e Administradora de Bens Ltda</h4>
                    <p>S�o Jos� dos Pinhais - PR</p>
                </div>
                <div class="col-md-3 col-sm-4">
                    <img src="resources/img/Cli5459.jpg" class="img-responsive img-thumbnail">
                    <h4>Condom�nio do Edif�cio Beta</h4>
                    <p>Manaus - AM</p>
                </div>
                <div class="col-md-3 col-sm-4">
                    <img src="resources/img/Cli4649.jpg" class="img-responsive img-thumbnail">
                    <h4>Hirema Administradora de Condom�nios e Servi�os Ltda</h4>
                    <p>Curitiba - PR</p>
                </div>
                <div class="col-md-3 hidden-sm hidden-xs">
                    <img src="resources/img/Cli4858.jpg" class="img-responsive img-thumbnail">
                    <h4>Associa��o dos Moradores do Condom�nio Residencial M�e Terra</h4>
                    <p>Brumadinho - MG</p>
                </div>
            </div>
        </div>
    </section>

    <section id="section-5" class="clearfix">
        <h1><b> Fale Conosco</b></h1>
        <div class="col-md-12 col-sm-12" id="fale-conosco">
            <div class="col-md-5 col-sm-12">
                <img src="resources/img/envia-msg.png" class="img-responsive img-thumbnail img-rounded" alt="mapa de clientes brasil">
                <p>
                    <b>Av. Presidente Vargas, 1000</b>
                    <br>
                    Ed. Getulho Castanho - Sala 10 
                    <br>
                    CEP 14400-002
                    <br>
                    FRANCA - SP
                </p>
                <p>
                    Telefone (16) 3700-1010
                    <br>
                    TIM: (45) 99952-3729
                    <br>
                    VIVO: (45) 90953-6323
                    <br>
                    OI: (45) 98423-8789
                    <br>
                    CLARO: (45) 99153-3594
                </p>
                <a href="malito:sin@icondev.com.br">sin@icondev.com.br</a></p>
            </div>
            <form class="smart-form col-md-7 col-sm-12" >
                <header>
                    <p><b>Envie - nos uma mesnsagem</b></p>
                    <p>Para entrar em contato basta preencher o formul�rio abaixo que lhe retornaremos assim que poss�vel:</p>
                </header>
                <fieldset>
                    <div class="row">
                        <section class="col col-6">
                            <label class="label">Nome</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-user"></i>
                                <input type="text" name="named" id="named">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">E-mail</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-envelope-o"></i>
                                <input type="email" name="emaild" id="emaild">
                            </label>
                        </section>
                    </div>
                    <div class="row">
                        <section class="col col-6">
                            <label class="label">Celular</label>
                            <label class="input"> 
                                <i class="icon-prepend fa fa-mobile-phone"></i>
                                <input type="tel" name="cel" placeholder="(xx)xxxxx-xxxx" data-mask="(99)99999-9999">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Telefone</label>
                            <label class="input"> 
                                <i class="icon-prepend fa fa-phone"></i>
                                <input type="tel" name="phone" placeholder="(xx)xxxx-xxxx" data-mask="(99)9999-9999">
                            </label>
                        </section>

                    </div>
                    <section>
                        <label class="label">Assunto</label>
                        <label class="input">
                            <i class="icon-prepend fa fa-tag"></i>
                            <input type="text" name="subject" id="subject">
                        </label>
                    </section>
                    <section>
                        <label class="label">Mensagem</label>
                        <label class="textarea">
                            <i class="icon-prepend fa fa-comment"></i>
                            <textarea rows="10" name="message" id="message"></textarea>
                        </label>
                    </section>
                </fieldset>
                <footer>
                    <button class="btn btn-success">Enviar</button>
                </footer>
            </form>
        </div>
    </section>
</div>
</body>
</html>
