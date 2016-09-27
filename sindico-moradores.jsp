<%-- 
    Document   : unidade
    Created on : 18/09/2016, 22:39:27
    Author     : jhonn_000
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>

<c:import url="header.jsp" />
<style>
    .navbar.navbar-fixed-top,  .navbar.navbar-fixed-top a{
        background: #fff;
    }

    .navbar.navbar-fixed-top a{
        color: #1A877B
    }  

    .content .header{
        text-align: left !important;
        padding: 20px
    }

    .content .header h2{
        padding: 0
    }

    .content{
        width: 100%;
        background: #fff;
        margin-top: 70px !important;
    }

    .buttons-control{
        padding-bottom: 20px 
    }
    .modal-backdrop{
        z-index: -1
    }
</style>
<div class="content">
    <header class="header">
        <h2><b>MORADORES</b></h2>
    </header>
    <div class="container no-padding">
        <section>
            <div class="row buttons-control">
                <div class="col-md-12 col-sm-12 no-padding">
                    <button class="btn btn-success" data-toggle="modal" data-target="#nova-unidade-modal"><i class="fa fa-plus-circle"></i>  Novo Morador</button>
                    <button class="btn btn-danger"><i class="fa fa-trash-o"></i>  Excluir</button>
                </div>
            </div>
            <div class="row">
                <div class="jarviswidget clearfix" data-widget-editbutton="false">
                    <header>
                        <h2>Essa é a tela onde é possível visualizar e cadastrar todos os moradores do condomínio/prédio.</h2>
                    </header>
                    <div>
                        <div class="jarviswidget-editbox">
                        </div>
                        <div class="widget-body no-padding">
                            <table id="datatable_fixed_column" class="table table-striped table-bordered" width="100%">
                                <thead>
                                    <tr>
                                        <th style="width:3%"></th>
                                        <th style="width:3%"></th>
                                        <th class="hasinput" style="width:4">
                                            <input type="text" class="form-control" placeholder="Bloco/Quadra" />
                                        </th>
                                        <th class="hasinput" style="width:4%">
                                            <input type="text" class="form-control" placeholder="Torre/Lote" />
                                        </th>
                                        <th class="hasinput" style="width:4%">
                                            <input type="text" class="form-control" placeholder="Unidade" />
                                        </th>
                                        <th class="hasinput" style="width:10%">
                                            <input type="text" class="form-control" placeholder="Morador" />
                                        </th>
                                        <th class="hasinput" style="width:8%">
                                            <input type="text" class="form-control" placeholder="Email" />
                                        </th>
                                        <th class="hasinput" style="width:8%">
                                            <input type="text" class="form-control" placeholder="CPF" />
                                        </th>
                                        <th class="hasinput" style="width:8%">
                                            <input type="text" class="form-control" placeholder="RG" />
                                        </th>
                                        <th class="hasinput" style="width:5%">
                                            <input type="text" class="form-control" placeholder="Data Nasc." />
                                        </th>
                                        <th class="hasinput" style="width:8%">
                                            <input type="text" class="form-control" placeholder="Telefone/Celular" />
                                        </th>
                                        <th class="hasinput" style="width:4%">
                                            <input type="text" class="form-control" placeholder="Veiculos" />
                                        </th>
                                        <th class="hasinput" style="width:4%">
                                            <input type="text" class="form-control" placeholder="Animais" />
                                        </th>
                                        <th class="hasinput" style="width:4%">
                                            <input type="text" class="form-control" placeholder="Pessoas" />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th></th>                                      
                                        <th></th>
                                        <th>Bloco/Quadra</th>
                                        <th>Torre/Lote</th>
                                        <th>Unidade</th>
                                        <th>Morador</th>
                                        <th>Email</th>
                                        <th>Cpf</th>
                                        <th>RG</th>
                                        <th>Data Nasc</th>
                                        <th>Telefone/Celular</th>
                                        <th>Veiculos</th>
                                        <th>Animais</th>
                                        <th>Pessoas</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (int i = 0; i < 100; i++) {%>
                                    <tr>
                                        <td><input type="checkbox"/></td>
                                        <td><a href="javascript:void(0)" data-toggle="modal" data-target="#nova-unidade-modal"><i class="fa fa-edit"></i></a></td>
                                        <td>Bloco <%= i%></td>
                                        <td>Torre <%= i%></td>
                                        <td>Unidade <%=  i%></td>
                                        <td>João da Silva <%= i%></td>
                                        <td>joão<%= i%>@gmail.com</td>
                                        <td><%= i%><%= i%><%= i%>.<%= i%>.<%= i%></td>
                                        <td><%= i%>.<%= i%><%= i%><%= i%>.<%= i%></td>
                                        <td>01/<%= i%>/19<%= i%></td>
                                        <td>(<%= i%>)<%= i%><%= i%><%= i%><%= i%><br>(<%= i%>)<%= i%><%= i%><%= i%></td>
                                        <td><%= i%></td>
                                        <td><%= i%></td>
                                        <td><%= i%></td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<div class="modal fade" id="nova-unidade-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">Cadastro de Moradores</h4>
            </div>
            <div class="modal-body">
                <form class="smart-form">
                    <div class="row">
                        <section class="col col-4">
                            <label class="label"> Bloco/Quadra</label>
                            <label class="select">
                                <select class="form-control" id="bloco-quadra" name="bloco-quadra">
                                    <option>A</option>
                                    <option>B</option>
                                    <option>C</option>
                                </select><i></i>
                            </label>
                        </section>
                        <section class="col col-4">
                            <label class="label"> Torre/Lote</label>
                            <label class="select">
                                <select class="form-control" id="torre-lote" name="torre-lote">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select><i></i>
                            </label>
                        </section>
                        <section class="col col-4">
                            <label class="label"> Unidade</label>
                            <label class="select">
                                <select class="form-control" id="unidade" name="unidade">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select><i></i>
                            </label>
                        </section>
                    </div>
                    <header style="margin: 10px 0 !important">
                        <h4>Morador</h4>
                    </header>
                    <div class="row">
                        <section class="col col-6">
                            <label class="label">CPF</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-exclamation-circle"></i>
                                <input type="text" name="cpf" id="cpf" data-mask="999.999.999-99">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">RG</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-exclamation-circle"></i>
                                <input type="text" name="cnpj" id="cnpj" data-mask="99.999.999/9999-99">
                            </label>
                        </section>
                        <section class="col col-md-12">
                            <label class="label">Nome</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-user"></i>
                                <input type="text" name="nome" id="nome">
                            </label>
                        </section>
                    </div>
                    <div class="row">
                        <section class="col col-6">
                            <label class="label">Data de Nascimento</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-calendar"></i>
                                <input type="text" name="data-nascimento" class="datepicker" data-dateformat='dd/mm/yy' id="data-nascimento">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">E-mail</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-envelope-o"></i>
                                <input type="email" name="email" id="email">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Celular</label>
                            <label class="input"> 
                                <i class="icon-prepend fa fa-mobile-phone"></i>
                                <input type="tel" name="celular" id="celular" placeholder="(xx)xxxxx-xxxx" data-mask="(99)99999-9999">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Telefone</label>
                            <label class="input"> 
                                <i class="icon-prepend fa fa-phone"></i>
                                <input type="tel" name="telefone" id="telefone" placeholder="(xx)xxxx-xxxx" data-mask="(99)9999-9999">
                            </label>
                        </section>
                    </div>
                    <header style="margin: 10px 0 !important">
                        <h4>Animais</h4>
                    </header>
                    <button class="btn btn-success btn-sm" type="button" onclick="$('#animais').hasClass('open') ? $('#animais').hide().removeClass('open') : $('#animais').show().addClass('open')"><i class="fa fa-plus-circle"></i> Animais</button>
                    <div class="row" style="margin-top: 10px">
                        <section class="col col-md-12">
                            <div class="list-group">
                                <li class="list-group-item"style="padding:5px">
                                    <p>Especie: Gato</p>
                                    <p>Porte:  Pequeno</p>
                                    <p>Raça:  Indefinida</p>
                                    <p>Cor:  Branco</p>
                                </li>
                                <li class="list-group-item"style="padding:5px">
                                    <p>Especio: Cachorro</p>
                                    <p>Porte:  Médio</p>
                                    <p>Raça:  Indefinida</p>
                                    <p>Cor:  Verde</p>
                                </li>
                            </div>
                        </section>
                    </div>
                    <div class="row" id="animais" hidden>
                        <section class="col col-6">
                            <label class="label">Especie</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-paw"></i>
                                <input type="text" name="especie" id="especie">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Porte</label>
                            <label class="select">
                                <select class="form-control" id="porte" name="porte">
                                    <option>Pequeno</option>
                                    <option>Médio</option>
                                    <option>Grande</option>
                                </select><i></i>
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Raça</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-paw"></i>
                                <input type="text" name="raca" id="raca">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Cor</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-paw"></i>
                                <input type="text" name="cor" id="cor">
                            </label>
                        </section>
                    </div>


                    <header style="margin: 10px 0 !important">
                        <h4>Veiculos</h4>
                    </header>
                    <button class="btn btn-success btn-sm" type="button" onclick="$('#veiculo').hasClass('open') ? $('#veiculo').hide().removeClass('open') : $('#veiculo').show().addClass('open')"><i class="fa fa-plus-circle"></i> Veiculo</button>
                    <div class="row" style="margin-top: 10px">
                        <section class="col col-md-12">
                            <div class="list-group">
                                <li class="list-group-item"style="padding:5px">
                                    <p>Placa:  GTX-4458 - São Paulo/SP</p>
                                    <p>Ano:  2008</p>
                                    <p>Cor:  Branca</p>
                                    <p>Modelo:  Pálio</p>
                                </li>
                                <li class="list-group-item"style="padding:5px">
                                    <p>Placa:  GTX-4458 - São Paulo/SP</p>
                                    <p>Ano:  2008</p>
                                    <p>Cor:  Branca</p>
                                    <p>Modelo:  Pálio</p>
                                </li>
                            </div>
                        </section>
                    </div>
                    <div class="row" id="veiculo" hidden>
                        <section class="col col-6">
                            <label class="label">Placa</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-car"></i>
                                <input type="text" name="palca" id="placa" placeholder="ABC-1234">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Ano</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-car"></i>
                                <input type="text" name="ano" id="ano" data-mask="9999">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Cor</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-car"></i>
                                <input type="text" name="cor" id="cor">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Modelo</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-car"></i>
                                <input type="text" name="modelo" id="modelo">
                            </label>
                        </section>
                    </div>

                    <header style="margin: 10px 0 !important">
                        <h4>Pessoas</h4>
                    </header>
                    <button class="btn btn-success btn-sm" type="button" onclick="$('#pessoas').hasClass('open') ? $('#pessoas').hide().removeClass('open') : $('#pessoas').show().addClass('open')"><i class="fa fa-plus-circle"></i> Pessoas</button>
                    <div class="row" style="margin-top: 10px">
                        <section class="col col-md-12">
                            <div class="list-group">
                                <li class="list-group-item"style="padding:5px">
                                    <p>Nome: Joana de Matos</p>
                                    <p>Data Nasc.: 21/04/1980</p>
                                    <p>Telefone:  (16)99999-8999</p>
                                    <p>Celular:  (16)99999-8999</p>
                                    <p>RG:  489.69.457-01</p>
                                    <p>CPF: 458.999.624-33</p>
                                    <p>Email: joana@gmail.com</p>
                                </li>
                                <li class="list-group-item"style="padding:5px">
                                    <p>Nome: Roberto de Matos</p>
                                    <p>Data Nasc.: 22/04/1979</p>
                                    <p>Telefone:  (16)99999-8999</p>
                                    <p>Celular  (16)99999-8999</p>
                                    <p>RG:  489.69.457-01</p>
                                    <p>CPF: 458.999.624-33</p>
                                    <p>Email: roberto@gmail.com</p>
                                </li>
                            </div>
                        </section>
                    </div>
                    <div id="pessoas" hidden="">
                        <div class="row">
                            <section class="col col-6">
                                <label class="label">CPF</label>
                                <label class="input">
                                    <i class="icon-prepend fa fa-exclamation-circle"></i>
                                    <input type="text" name="cpf-pessoa" id="cpf-pessoa" placeholdata-mask="999.999.999-99">
                                </label>
                            </section>
                            <section class="col col-6">
                                <label class="label">RG</label>
                                <label class="input">
                                    <i class="icon-prepend fa fa-exclamation-circle"></i>
                                    <input type="text" name="cnpj-pessoa" id="cnpj-pessoa" data-mask="99.999.999/9999-99">
                                </label>
                            </section>
                            <section class="col col-md-12">
                                <label class="label">Nome</label>
                                <label class="input">
                                    <i class="icon-prepend fa fa-user"></i>
                                    <input type="text" name="nome-pessoa" id="nome-pessoa">
                                </label>
                            </section>
                        </div>
                        <div class="row">
                            <section class="col col-6">
                                <label class="label">Data de Nascimento</label>
                                <label class="input">
                                    <i class="icon-prepend fa fa-calendar"></i>
                                    <input type="text" name="data-nascimento-pessoa" class="datepicker" data-dateformat='dd/mm/yy' id="data-nascimento-pessoa">
                                </label>
                            </section>
                            <section class="col col-6">
                                <label class="label">E-mail</label>
                                <label class="input">
                                    <i class="icon-prepend fa fa-envelope-o"></i>
                                    <input type="email" name="email-pessoa" id="email-pessoa">
                                </label>
                            </section>
                            <section class="col col-6">
                                <label class="label">Celular</label>
                                <label class="input"> 
                                    <i class="icon-prepend fa fa-mobile-phone"></i>
                                    <input type="tel" name="celular-pessoa" id="celular-pessoa" placeholder="(xx)xxxxx-xxxx" data-mask="(99)99999-9999">
                                </label>
                            </section>
                            <section class="col col-6">
                                <label class="label">Telefone</label>
                                <label class="input"> 
                                    <i class="icon-prepend fa fa-phone"></i>
                                    <input type="tel" name="telefone-pessoa" id="telefone-pessoa" placeholder="(xx)xxxx-xxxx" data-mask="(99)9999-9999">
                                </label>
                            </section>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Cancelar
                </button>
                <button type="submit" class="btn btn-success">
                    Enviar
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->                              


<script type="text/javascript">
    $(document).ready(function () {

        pageSetUp();

        var responsiveHelper_dt_basic = undefined;
        var responsiveHelper_datatable_fixed_column = undefined;
        var responsiveHelper_datatable_col_reorder = undefined;
        var responsiveHelper_datatable_tabletools = undefined;

        var breakpointDefinition = {
            tablet: 1024,
            phone: 480
        };

        $('#dt_basic').dataTable({
            "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>" +
                    "t" +
                    "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
            "autoWidth": true,
            aaSorting: [],
            "oLanguage": {
                "sEmptyTable": "Nenhuma certificação disponivel",
                "sZeroRecords": "Nenhum resultado encontrado",
                "oPaginate": {
                    "sNext": "Próxima",
                    "sLast": "Última Página",
                    "sFirst": "Primeira Página",
                    "sPrevious": "Anterior",
                },
                "sInfo": "Exibindo pagina (_START_ de _END_) de um total de  _TOTAL_ resultados"
            },
            "preDrawCallback": function () {
                if (!responsiveHelper_dt_basic) {
                    responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#dt_basic'), breakpointDefinition);
                }
            },
            "rowCallback": function (nRow) {
                responsiveHelper_dt_basic.createExpandIcon(nRow);
            },
            "drawCallback": function (oSettings) {
                responsiveHelper_dt_basic.respond();
            }
        });

        var otable = $('#datatable_fixed_column').DataTable({
            "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6 hidden-xs'f><'col-sm-6 col-xs-12 hidden-xs'<'toolbar'>>r>" +
                    "t" +
                    "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
            "autoWidth": true,
            aaSorting: [],
            "oLanguage": {
                "sEmptyTable": "Nenhuma certificação disponivel",
                "sZeroRecords": "Nenhum resultado encontrado",
                "oPaginate": {
                    "sNext": "Próxima",
                    "sLast": "Última Página",
                    "sFirst": "Primeira Página",
                    "sPrevious": "Anterior",
                },
                "sInfo": "Exibindo pagina (_START_ de _END_) de um total de  _TOTAL_ resultados"
            },
            "preDrawCallback": function () {
                if (!responsiveHelper_datatable_fixed_column) {
                    responsiveHelper_datatable_fixed_column = new ResponsiveDatatablesHelper($('#datatable_fixed_column'), breakpointDefinition);
                }
            },
            "rowCallback": function (nRow) {
                responsiveHelper_datatable_fixed_column.createExpandIcon(nRow);
            },
            "drawCallback": function (oSettings) {
                responsiveHelper_datatable_fixed_column.respond();
            }

        });


        $("#datatable_fixed_column thead th input[type=text]").on('keyup change', function () {
            otable
                    .column($(this).parent().index() + ':visible')
                    .search(this.value)
                    .draw();

        });

        $('#datatable_col_reorder').dataTable({
            "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-6 hidden-xs'C>r>" +
                    "t" +
                    "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-sm-6 col-xs-12'p>>",
            "autoWidth": true,
            aaSorting: [],
            "oLanguage": {
                "sEmptyTable": "Nenhuma certificação disponivel",
                "sZeroRecords": "Nenhum resultado encontrado",
                "oPaginate": {
                    "sNext": "Próxima",
                    "sLast": "Última Página",
                    "sFirst": "Primeira Página",
                    "sPrevious": "Anterior",
                },
                "sInfo": "Exibindo pagina (_START_ de _END_) de um total de  _TOTAL_ resultados"
            },
            "preDrawCallback": function () {
                if (!responsiveHelper_datatable_col_reorder) {
                    responsiveHelper_datatable_col_reorder = new ResponsiveDatatablesHelper($('#datatable_col_reorder'), breakpointDefinition);
                }
            },
            "rowCallback": function (nRow) {
                responsiveHelper_datatable_col_reorder.createExpandIcon(nRow);
            },
            "drawCallback": function (oSettings) {
                responsiveHelper_datatable_col_reorder.respond();
            }
        });

        $('#datatable_tabletools').dataTable({
            "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-6 hidden-xs'T>r>" +
                    "t" +
                    "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-sm-6 col-xs-12'p>>",
            "oTableTools": {
                "aButtons": [
                    "copy",
                    "csv",
                    "xls",
                    {
                        "sExtends": "pdf",
                        "sTitle": "SmartAdmin_PDF",
                        "sPdfMessage": "SmartAdmin PDF Export",
                        "sPdfSize": "letter"
                    },
                    {
                        "sExtends": "print",
                        "sMessage": "Generated by SmartAdmin <i>(press Esc to close)</i>"
                    }
                ],
                "sSwfPath": "js/plugin/datatables/swf/copy_csv_xls_pdf.swf"
            },
            "autoWidth": true,
            aaSorting: [],
            "oLanguage": {
                "sEmptyTable": "Nenhuma certificação disponivel",
                "sZeroRecords": "Nenhum resultado encontrado",
                "oPaginate": {
                    "sNext": "Próxima",
                    "sLast": "Última Página",
                    "sFirst": "Primeira Página",
                    "sPrevious": "Anterior",
                },
                "sInfo": "Exibindo pagina (_START_ de _END_) de um total de  _TOTAL_ resultados"
            },
            "preDrawCallback": function () {
                if (!responsiveHelper_datatable_tabletools) {
                    responsiveHelper_datatable_tabletools = new ResponsiveDatatablesHelper($('#datatable_tabletools'), breakpointDefinition);
                }
            },
            "rowCallback": function (nRow) {
                responsiveHelper_datatable_tabletools.createExpandIcon(nRow);
            },
            "drawCallback": function (oSettings) {
                responsiveHelper_datatable_tabletools.respond();
            }
        });
    });
</script>
</body>
</html>
