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
        <h2><b>SOLICITAÇÕES</b></h2>
    </header>
    <div class="container no-padding">
        <section>
            <div class="row buttons-control">
                <div class="col-md-12 col-sm-12 no-padding">
                    <button class="btn btn-success" data-toggle="modal" data-target="#enviar-mensagem-modal"><i class="fa fa-comments-o"></i>  Enviar Mensagem</button>
                </div>
            </div>
            <div class="row">
                <div class="jarviswidget clearfix" data-widget-editbutton="false">
                    <header>
                        <h2>Todas a solicitações feitas pelos moradores se encontram aqui.</h2>
                    </header>
                    <div>
                        <div>
                            <div class="jarviswidget-editbox">
                            </div>
                            <div class="widget-body no-padding">
                                <table id="datatable_fixed_column" class="table table-striped table-bordered" width="100%">
                                    <thead>
                                        <tr>
                                            <th class="hasinput" style="width:10%"></th>
                                            <th class="hasinput" style="width:5%">
                                                <input type="text" class="form-control" placeholder="Data" />
                                            </th>
                                            <th class="hasinput" style="width:15%">
                                                <input type="text" class="form-control" placeholder="Nome" />
                                            </th>
                                            <th class="hasinput" style="width:15%">
                                                <input type="text" class="form-control" placeholder="Assunto" />
                                            </th>
                                            <th class="hasinput" style="width:5%">
                                                <input type="text" class="form-control" placeholder="Situação" />
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>Visualizar e Responder Mensagem</th>
                                            <th>Data</th>
                                            <th>Nome</th>
                                            <th>Assunto</th>
                                            <th>Situação</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for (int i = 0; i < 100; i++) {%>
                                        <tr>
                                            <td><a href="javascript:void(0)" data-toggle="modal" data-target="#nova-unidade-modal" style="text-align: center; width: 100%; display: block;"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                            <td>23/09/2016</td>
                                            <td>João da Silva</td>
                                            <td>Barulho no Ap 52.</td>
                                            <td>Lida</td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
                                    
<div class="modal fade" id="enviar-mensagem-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">Enviar Mensagem</h4>
            </div>
            <div class="modal-body">
                <form class="smart-form">
                    <div class="row">
                        <section class="col col-6">
                            <label class="label">Assunto:</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-font"></i>
                                <input type="text" name="assunto" id="assunto">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Nome:</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-user"></i>
                                <input type="text" name="nome" id="nome">
                            </label>
                        </section>
                        <section class="col col-md-12">
                            <div class="input">
                                <label for="comment">Mensagem:</label>
                                <textarea class="form-control" rows="5" id="mensagem"></textarea>
                            </div>
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
                                    
<div class="modal fade" id="nova-unidade-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">Mensagens</h4>
            </div>
            <div class="modal-body">
                <form class="smart-form">
                    <div class="row">
                        <header style="margin: 10px 0 !important">
                            <h4>Visualizar</h4>
                        </header>
                        <section class="col col-6">
                            <label class="label">Assunto:</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-font"></i>
                                <input type="text" name="assunto" id="assunto" disabled="true">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Nome:</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-user"></i>
                                <input type="text" name="nome" id="nome" disabled="true">
                            </label>
                        </section>
                        <section class="col col-md-12">
                            <div class="input">
                                <label for="comment">Mensagem:</label>
                                <textarea class="form-control" rows="5" id="mensagem" disabled="true"></textarea>
                            </div>
                        </section>
                    </div>

                    <div class="row">
                        <header style="margin: 10px 0 !important">
                            <h4>Responder</h4>
                        </header>
                        <section class="col col-6">
                            <label class="label">Assunto:</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-font"></i>
                                <input type="text" name="assunto" id="assunto">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Nome:</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-user"></i>
                                <input type="text" name="nome" id="nome">
                            </label>
                        </section>
                        <section class="col col-md-12">
                            <div class="input">
                                <label for="comment">Mensagem:</label>
                                <textarea class="form-control" rows="5" id="mensagem"></textarea>
                            </div>
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
