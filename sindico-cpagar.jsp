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
        <h2><b>CONTAS A PAGAR</b></h2>
    </header>
    <div class="container no-padding">
        <section>
            <div class="row">
                <div class="jarviswidget clearfix" data-widget-editbutton="false">
                    <header>
                        <h2>Aqui se visualiza contas a pagar.</h2>
                    </header>
                    <div>
                        <div class="jarviswidget-editbox">
                        </div>
                        <div class="widget-body no-padding">
                            <table id="datatable_fixed_column" class="table table-striped table-bordered" width="100%">
                                <thead>
                                    <tr>
                                        <th class="hasinput" style="width:13%">
                                            <input type="text" class="form-control" placeholder="Referente a" />
                                        </th>
                                        <th class="hasinput" style="width:12%">
                                            <input type="text" class="form-control" placeholder="Valor R$" />
                                        </th>
                                        <th class="hasinput" style="width:13%">
                                            <input type="text" class="form-control" placeholder="Data" />
                                        </th>
                                        <th class="hasinput" style="width:12%">
                                            <input type="text" class="form-control" placeholder="Situa��o" />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>Referente a</th>
                                        <th>Valor R$</th>
                                        <th>Data</th>
                                        <th>Situa��o</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (int i = 0; i < 100; i++) {%>
                                    <tr>
                                        <td>Aluguel <%= i%></td>
                                        <td><%= Math.rint(i * Math.random() * 100)%></td>
                                        <td>12/12/12</td>
                                        <td>Pago</td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                            <label class="label" color="Black"><font color="black" size=4>TOTAL</font></label>
                                <label class="input">
                                    <input type="text" name="total" id="total" disabled="true">
                            </label>   
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
                "sEmptyTable": "Nenhuma certifica��o disponivel",
                "sZeroRecords": "Nenhum resultado encontrado",
                "oPaginate": {
                    "sNext": "Pr�xima",
                    "sLast": "�ltima P�gina",
                    "sFirst": "Primeira P�gina",
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
                "sEmptyTable": "Nenhuma certifica��o disponivel",
                "sZeroRecords": "Nenhum resultado encontrado",
                "oPaginate": {
                    "sNext": "Pr�xima",
                    "sLast": "�ltima P�gina",
                    "sFirst": "Primeira P�gina",
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
                "sEmptyTable": "Nenhuma certifica��o disponivel",
                "sZeroRecords": "Nenhum resultado encontrado",
                "oPaginate": {
                    "sNext": "Pr�xima",
                    "sLast": "�ltima P�gina",
                    "sFirst": "Primeira P�gina",
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
                "sEmptyTable": "Nenhuma certifica��o disponivel",
                "sZeroRecords": "Nenhum resultado encontrado",
                "oPaginate": {
                    "sNext": "Pr�xima",
                    "sLast": "�ltima P�gina",
                    "sFirst": "Primeira P�gina",
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

