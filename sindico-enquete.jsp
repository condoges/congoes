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
        <h2><b>ENQUETES</b></h2>
    </header>
    <div class="container no-padding">
        <section>
            <div class="row buttons-control">
                <div class="col-md-12 col-sm-12 no-padding">
                    <button class="btn btn-success" data-toggle="modal" data-target="#lancar-modal"><i class="fa fa-plus-circle"></i>  Adicionar</button>
                    <button class="btn btn-danger"><i class="fa fa-trash-o"></i>  Excluir</button>
                </div>
            </div>
            <div class="row">
                <header>
                    <div class="jarviswidget clearfix" data-widget-editbutton="false">
                        <header>
                            <h2>Aqui pode-se lançar e analisar andamento de enquetes.</h2>
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
                                            <th class="hasinput" style="width:15%">
                                                <input type="text" class="form-control" placeholder="Pergunta" />
                                            </th>
                                            <th class="hasinput" style="width:10%">
                                                <input type="text" class="form-control" placeholder="Situação" />
                                            </th>
                                            <th class="hasinput" style="width:12%">
                                                <input type="text" class="form-control" placeholder="Total Participantes" />
                                            </th>
                                            <th class="hasinput" style="width:12%">
                                                <input type="text" class="form-control" placeholder="Resposta 1 - Total" />
                                            </th>
                                            <th class="hasinput" style="width:12%">
                                                <input type="text" class="form-control" placeholder="Resposta 2 - Total" />
                                            </th>
                                            <th class="hasinput" style="width:12%">
                                                <input type="text" class="form-control" placeholder="Resposta 3 - Total" />
                                            </th>
                                            <th class="hasinput" style="width:12%">
                                                <input type="text" class="form-control" placeholder="Resposta 4 - Total" />
                                            </th>
                                            <th class="hasinput" style="width:3%">
                                            </th>
                                        </tr>
                                        <tr>
                                            <th></th>                                      
                                            <th></th>
                                            <th>Pergunta</th>
                                            <th>Situação</th>
                                            <th>Total Participantes</th>
                                            <th>Resposta 1 - Total</th>
                                            <th>Resposta 2 - Total</th>
                                            <th>Resposta 3 - Total</th>
                                            <th>Resposta 4 - Total</th>
                                            <th>Resultado</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for (int i = 0; i < 100; i++) {%>
                                        <tr>
                                            <td><input type="checkbox"/></td>
                                            <td><a href="javascript:void(0)" data-toggle="modal" data-target="#lancar-modal"><i class="fa fa-edit"></i></a></td>
                                            <td>??????</td>
                                            <td>Em andamento</td>
                                            <td><%= i * 10%></td>
                                            <td><%= i * 3%></td>
                                            <td><%= i * 4%></td>
                                            <td><%= i * 5%></td>
                                            <td><%= i * 6%></td>
                                            <td><a href="javascript:void(0)" data-toggle="modal" data-target="#visu-modal" style="text-align: center; width: 100%; display: block;"><i class="fa fa-tasks"></i></a></td>
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

<div class="modal fade" id="lancar-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel"> Lançar Enquete </h4>
            </div>
            <div class="modal-body">
                <form class="smart-form">
                    <div class="row">
                        <section class="col col-md-12">
                            <label class="label">Pergunta</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-question"></i>
                                <input type="text" name="pergunta" id="pergunta">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Resposta 1</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-th-large"></i>
                                <input type="text" name="resposta1" id="resposta1">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Resposta 2</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-th-large"></i>
                                <input type="text" name="resposta2" id="resposta2">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Resposta 3</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-th-large"></i>
                                <input type="text" name="resposta3" id="resposta3">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Resposta 4</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-th-large"></i>
                                <input type="text" name="resposta4" id="resposta4">
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
                    Lançar
                </button>
            </div>
        </div><!-- /.modal-dialog -->
    </div>
</div>
                                    
<div class="modal fade" id="visu-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">Resultado Enquete</h4>
            </div>
            <div class="modal-body">
                <form class="smart-form">
                    <div class="row">
                        <table id="datatable_fixed_column" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th class="hasinput" style="width:25%">Morador</th>
                                    <th class="hasinput" style="width:15%">Resposta 1</th>
                                    <th class="hasinput" style="width:15%">Resposta 2</th>
                                    <th class="hasinput" style="width:15%">Resposta 3</th>
                                    <th class="hasinput" style="width:15%">Resposta 4</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for (int i = 0; i < 10; i++) {%>
                                <tr>
                                    <td> João Da Silva <%= i%></td>
                                    <td><input type="checkbox" style="text-align: center; width: 100%; display: block;" checked/></td>
                                    <td><input type="checkbox" style="text-align: center; width: 100%; display: block;"/></td>
                                    <td><input type="checkbox" style="text-align: center; width: 100%; display: block;"/></td>
                                    <td><input type="checkbox" style="text-align: center; width: 100%; display: block;"/></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-success" data-dismiss="modal">
                    Voltar
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
