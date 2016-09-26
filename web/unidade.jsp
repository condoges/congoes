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
        <h2><b>UNIDADES</b></h2>
    </header>
    <div class="container no-padding">
        <section>
            <div class="row buttons-control">
                <div class="col-md-12 col-sm-12 no-padding">
                    <button class="btn btn-success" data-toggle="modal" data-target="#nova-unidade-modal"><i class="fa fa-plus-circle"></i>  Nova Unidade</button>
                    <button class="btn btn-danger"><i class="fa fa-trash-o"></i>  Excluir</button>
                </div>
            </div>
            <div class="row">
                <div class="jarviswidget clearfix" data-widget-editbutton="false">
                    <header>
                        <h2>Unidades Cadastradas</h2>
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
                                        <th class="hasinput" style="width:10%">
                                            <input type="text" class="form-control" placeholder="Tipo" />
                                        </th>
                                        <th class="hasinput" style="width:8%">
                                            <input type="text" class="form-control" placeholder="Bloco/Quadra" />
                                        </th>
                                        <th class="hasinput" style="width:8%">
                                            <input type="text" class="form-control" placeholder="Torre/Lote" />
                                        </th>
                                        <th class="hasinput" style="width:8%">
                                            <input type="text" class="form-control" placeholder="Unidade" />
                                        </th>
                                        <th class="hasinput" style="width:20%">
                                            <input type="text" class="form-control" placeholder="Proprietário" />
                                        </th>
                                        <th class="hasinput" style="width:20%">
                                            <input type="text" class="form-control" placeholder="Morador" />
                                        </th>
                                        <th class="hasinput" style="width:6%">
                                            <input type="text" class="form-control" placeholder="Metragem" />
                                        </th>
                                        <th class="hasinput" style="width:6%">
                                            <input type="text" class="form-control" placeholder="Nº Matricula" />
                                        </th>
                                        <th class="hasinput" style="width:8%">
                                            <input type="text" class="form-control" placeholder="Situação" />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th></th>                                      
                                        <th></th>
                                        <th>Tipo</th>
                                        <th>Bloco/Quadra</th>
                                        <th>Torre/Lote</th>
                                        <th>Unidade</th>
                                        <th>Proprietário</th>
                                        <th>Morador</th>
                                        <th>Metragem</th>
                                        <th>Nº Matricula</th>
                                        <th>Situação</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (int i = 0; i < 100; i++) {%>
                                    <tr>
                                        <td><input type="checkbox"/></td>
                                        <td><a href="javascript:void(0)" data-toggle="modal" data-target="#nova-unidade-modal"><i class="fa fa-edit"></i></a></td>
                                        <td>Apartamento</td>
                                        <td>Bloco <%= i%></td>
                                        <td>Torre <%= i%></td>
                                        <td><%= i%></td>
                                        <td>João da Silva <%= i%></td>
                                        <td>João da Silva <%= i%></td>
                                        <td><%= Math.rint(i * Math.random() * 100)%></td>
                                        <td><%= i * 100%></td>
                                        <td>Unidade própria</td>
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
                <h4 class="modal-title" id="myModalLabel">Cadastro de Unidades</h4>
            </div>
            <div class="modal-body">
                <form class="smart-form">
                    <div class="row">
                        <section class="col col-6">
                            <label class="label"> Situação</label>
                            <label class="select">
                                <select class="form-control" id="situacao" name="situacao">
                                    <option>Vazia</option>
                                    <option>Própria</option>
                                    <option>Alugada</option>
                                </select><i></i>
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label"> Tipo</label>
                            <div class="inline-group">
                                <label class="radio">
                                    <input type="radio" name="tipo" checked="" value="apartamento">
                                    <i></i>Apartamento
                                </label>
                                <label class="radio">
                                    <input type="radio" name="tipo" value="casa">
                                    <i></i>Casa
                                </label>
                            </div>
                        </section>
                    </div>
                    <div class="row">
                        <section class="col col-6">
                            <label class="label"> Bloco/Quadra</label>
                            <label class="select">
                                <select class="form-control" id="situacao" name="bloco-quadra">
                                    <option>A</option>
                                    <option>B</option>
                                    <option>C</option>
                                </select><i></i>
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label"> Torre/Lote</label>
                            <label class="select">
                                <select class="form-control" id="situacao" name="torre-lote">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select><i></i>
                            </label>
                        </section>
                    </div>
                    <div class="row">
                        <section class="col col-6">
                            <label class="label">Metragem (M²)</label>
                            <label class="input">
                                <input type="number" name="metragem" id="metragem">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Nº da Matricula</label>
                            <label class="input">
                                <input type="number" name="numero-matricula" id="numero-matricula">
                            </label>
                        </section>
                    </div>
                    <header style="margin: 10px 0 !important">
                        <h4>Proprietário</h4>
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
                            <label class="label">CNPJ</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-exclamation-circle"></i>
                                <input type="text" name="cpf" id="cpf" data-mask="999.999.999-99">
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
                        <h4>Inquilino</h4>
                    </header>
                    <div class="row">
                        <section class="col col-6">
                            <label class="label">CPF</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-exclamation-circle"></i>
                                <input type="text" name="cpf-inquilino" id="cpf-inquilino" data-mask="999.999.999-99">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">CNPJ</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-exclamation-circle"></i>
                                <input type="text" name="cnpj-inquilino" id="cnpj-inquilino" data-mask="999.999.999-99">
                            </label>
                        </section>
                        <section class="col col-md-12">
                            <label class="label">Nome</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-user"></i>
                                <input type="text" name="nome-inquilino" id="nome-inquilino">
                            </label>
                        </section>
                    </div>
                    <div class="row">
                        <section class="col col-6">
                            <label class="label">Data de Nascimento</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-calendar"></i>
                                <input type="text" name="data-nascimento-inquilino" class="datepicker" data-dateformat='dd/mm/yy' id="data-nascimento-inquilino">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">E-mail</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-envelope-o"></i>
                                <input type="email" name="email-inquilino" id="email-inquilino">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Celular</label>
                            <label class="input"> 
                                <i class="icon-prepend fa fa-mobile-phone"></i>
                                <input type="tel" name="celular-inquilino" id="celular-inquilino" placeholder="(xx)xxxxx-xxxx" data-mask="(99)99999-9999">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Telefone</label>
                            <label class="input"> 
                                <i class="icon-prepend fa fa-phone"></i>
                                <input type="tel" name="telefone-inquilino" id="telefone-inquilino" placeholder="(xx)xxxx-xxxx" data-mask="(99)9999-9999">
                            </label>
                        </section>
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
