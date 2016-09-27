%<-- 
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
        <h2><b>VISITANTES</b></h2>
    </header>
    <div class="container no-padding">
        <section>
            <div class="row">
                <div class="jarviswidget clearfix" data-widget-editbutton="false">
                    <header>
                        <h2>Essa é a tela onde é possível visualizar todos os visitantes do condomínio/prédio.</h2>
                    </header>
                    <div>
                        <div class="jarviswidget-editbox">
                        </div>
                        <div class="widget-body no-padding">
                            <table id="datatable_fixed_column" class="table table-striped table-bordered" width="100%">
                                <thead>
                                    <tr>
                                        <th class="hasinput" style="width:5%">
                                            <input type="text" class="form-control" placeholder="Bloco/Quadra" />
                                        </th>
                                        <th class="hasinput" style="width:5%">
                                            <input type="text" class="form-control" placeholder="Torre/Lote" />
                                        </th>
                                        <th class="hasinput" style="width:5%">
                                            <input type="text" class="form-control" placeholder="Unidade" />
                                        </th>
                                        <th class="hasinput" style="width:15%">
                                            <input type="text" class="form-control" placeholder="Nome" />
                                        </th>
                                        <th class="hasinput" style="width:6%">
                                            <input type="text" class="form-control" placeholder="Data Entrada" />
                                        </th>
                                        <th class="hasinput" style="width:6%">
                                            <input type="text" class="form-control" placeholder="Data Saída" />
                                        </th>
                                        <th class="hasinput" style="width:10%">
                                            <input type="text" class="form-control" placeholder="Telefone" />
                                        </th>
                                        <th class="hasinput" style="width:8%">
                                            <input type="text" class="form-control" placeholder="CPF" />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>Bloco/Quadra</th>
                                        <th>Torre/Lote</th>
                                        <th>Unidade</th>
                                        <th>Nome</th>
                                        <th>Data Entrada</th>
                                        <th>Data Saída</th>
                                        <th>Telefone</th>
                                        <th>CPF</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (int i = 0; i < 100; i++) {%>
                                    <tr>
                                        <td>Bloco <%= i%></td>
                                        <td>Torre <%= i%></td>
                                        <td><%= i%></td>
                                        <td>João da Silva <%= i%></td>
                                        <td>02/02/2016 <br> 21:00</td>
                                        <td>02/02/2016 <br> 23:00</td>
                                        <td>(99) 99999-9999</td>
                                        <td>111.111.111-11</td>
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
