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
        <h2><b>FINANCEIRO</b></h2>
    </header>
    <div class="container no-padding">
        <section>
            <div class="row buttons-control">
                <div class="col-md-12 col-sm-12 no-padding">
                    <button class="btn btn-success" data-toggle="modal" data-target="#nova-unidade-modal"><i class="fa fa-plus-circle"></i>  Lançar</button>
                    <button class="btn btn-danger"><i class="fa fa-trash-o"></i>  Excluir</button>
                    <button class="btn btn-success navbar-right"><i class="fa fa-file-excel-o"></i>  Importar Excel</button>
                </div>
            </div>
            <div class="row">
                <div class="jarviswidget clearfix" data-widget-editbutton="false">
                    <header>
                        <h2>Aqui pode ser feito a verificação das contas a pagar e receber.</h2>
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
                                        <th class="hasinput" style="width:6%">
                                            <input type="text" class="form-control" placeholder="Andar" />
                                        </th>
                                        <th class="hasinput" style="width:6%">
                                            <input type="text" class="form-control" placeholder="Número" />
                                        </th>
                                        <th class="hasinput" style="width:15%">
                                            <input type="text" class="form-control" placeholder="Responsável" />
                                        </th>
                                        <th class="hasinput" style="width:15%">
                                            <input type="text" class="form-control" placeholder="Referente a" />
                                        </th>
                                        <th class="hasinput" style="width:10%">
                                            <input type="text" class="form-control" placeholder="Data" />
                                        </th>
                                        <th class="hasinput" style="width:10%">
                                            <input type="text" class="form-control" placeholder="Situação" />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th></th>                                      
                                        <th></th>
                                        <th>Andar</th>
                                        <th>Número</th>
                                        <th>Responsável</th>
                                        <th>Referente a</th>
                                        <th>Data</th>
                                        <th>Situação</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (int i = 0; i < 100; i++) {%>
                                    <tr>
                                        <td><input type="checkbox"/></td>
                                        <td><a href="javascript:void(0)" data-toggle="modal" data-target="#nova-unidade-modal"><i class="fa fa-edit"></i></a></td>
                                        <td><%= i%></td>
                                        <td><%= i * 3%></td>
                                        <td>João da Silva <%= i%></td>
                                        <td>Água / Luz</td>
                                        <td>01/<%= i%>/19<%= i%></td>
                                        <td>OK</td>                                        
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
                <h4 class="modal-title" id="myModalLabel">Lançar Contas </h4>
            </div>
            <div class="modal-body">
                <form class="smart-form">
                    <div class="row buttons-control">
                        <section class="col">
                            <div class="col-md-12 col-sm-12">
                                <button class="btn btn-success btn-sm" type="button" onclick="$('#lancar-g').hasClass('open') ? $('#lancar-g').hide().removeClass('open') : $('#lancar-g').show().addClass('open')"><i class="fa fa-plus-circle"></i> Lançar Geral</button>
                                <button class="btn btn-success btn-sm" type="button" onclick="$('#lancar-i').hasClass('open') ? $('#lancar-i').hide().removeClass('open') : $('#lancar-i').show().addClass('open')"><i class="fa fa-plus-circle"></i> Lançar Individual</button>
                            </div>
                        </section>
                    </div>
                    <div class="row" id="lancar-g">
                        <section class="col col-6">
                            <label class="label">Data</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-calendar"></i>
                                <input type="text" name="data-lancar-g" class="datepicker" data-dateformat='dd/mm/yy' id="data-lancar-g">
                            </label>
                        </section>
                        <section class="col col-md-6">
                            <label class="label">Valor</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-money"></i>
                                <input type="text" name="valor-lancar-g" id="valor-lancar-g">
                            </label>
                        </section>
                        <div>
                            <section class="col col-md-6">
                                <label class="label">Situação</label>
                                <label class="input">
                                    <i class="icon-prepend fa fa-user"></i>
                                    <input type="text" name="situacao-lancar-g" id="situacao-lancar-g">
                                </label>
                            </section>
                            <section class="col col-md-6">
                                <label class="label">Referente a</label>
                                <label class="input">
                                    <i class="icon-prepend fa fa-user"></i>
                                    <input type="text" name="referente-lancar-g" id="referente-lancar-g">
                                </label>
                            </section>
                        </div>
                    </div>

                    <div class="row" id="lancar-i" hidden>
                        <section class="col col-6">
                            <label class="label"> Bloco/Quadra</label>
                            <label class="select">
                                <select class="form-control" id="bloco-lancar-i" name="bloco-lancar-i">
                                    <option>A</option>
                                    <option>B</option>
                                    <option>C</option>
                                </select><i></i>
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Número</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-home"></i>
                                <input type="text" name="numero-lancar-i" id="numero-lancar-i">
                            </label>
                        </section>
                        <section class="col col-6">
                            <label class="label">Data</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-calendar"></i>
                                <input type="text" name="data-lancar-i" class="datepicker" data-dateformat='dd/mm/yy' id="data-lancar-i">
                            </label>
                        </section>
                        <section class="col col-md-6">
                            <label class="label">Valor</label>
                            <label class="input">
                                <i class="icon-prepend fa fa-money"></i>
                                <input type="text" name="valor-lancar-i" id="valor-lancar-i">
                            </label>
                        </section>
                        <div>
                            <section class="col col-md-6">
                                <label class="label">Situação</label>
                                <label class="input">
                                    <i class="icon-prepend fa fa-user"></i>
                                    <input type="text" name="situacao-lancar-i" id="situacao-lancar-i">
                                </label>
                            </section>
                            <section class="col col-md-6">
                                <label class="label">Referente a</label>
                                <label class="input">
                                    <i class="icon-prepend fa fa-user"></i>
                                    <input type="text" name="referente-lancar-i" id="referente-lancar-i">
                                </label>
                            </section>
                        </div>
                    </div>
            </div>

            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Cancelar
                </button>
                <button type="submit" class="btn btn-success">
                    Salvar
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
