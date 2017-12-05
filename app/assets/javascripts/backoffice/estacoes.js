$(document).ready(function() {
    $('#estacoes').DataTable( {
      "order": [[ 1, "desc" ]],
      "destroy": true,
      "sPaginationType": "full_numbers",
      "bJQueryUI": true,
      "bProcessing": true,
      "bServerSide": true,
      "columnDefs": [
        { "width": 50, "className": "text-center", "targets": [ 0 ]},
        { "width": 100, "className": "text-left", "targets": [ 1 ]},
        { "width": 50, "className": "text-left", "targets": [ 2 ]},
        { "width": 30, "className": "text-left", "targets": [ 3 ]},
        { "width": 30, "className": "text-center", "targets": [ 4 ]},
        { "width": 30, "className": "text-left", "targets": [ 5 ]}
        ],
      "language": {
        "decimal":        "",
        "emptyTable":     "Sem informação disponível na tabela",
        "info":           "Mostrando _START_ de _END_ para _TOTAL_ registros",
        "infoEmpty":      "Mostrando 0 de 0 para 0 registros",
        "infoFiltered":   "(Filtrado _MAX_ do total de entradas)",
        "infoPostFix":    "",
        "thousands":      ",",
        "lengthMenu":     "Mostra _MENU_ registros",
        "loadingRecords": "Carregando...",
        "processing":     "Processando...",
        "search":         "Pesquisa:",
        "zeroRecords":    "Não foram encontrados registros",
        "paginate": {
            "first":      "Primeiro",
            "last":       "Último",
            "next":       "Próximo",
            "previous":   "Anterior"
        },
      },
      "aria": {
            "sortAscending":  ": ative para ordenamento ascendente",
            "sortDescending": ": ative para ordenamento descendente"
            },      "sAjaxSource": $('#estacoes').data('source'),

        "initComplete": function () {
            this.api().columns().every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                    .appendTo( $(column.footer()).empty() )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );

                        column
                            .search( val ? val : '', true, false )
                            .draw();
                    } );

                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
        }

    } );
} );
