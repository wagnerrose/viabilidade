$(document).ready( function () {

  var table = $('#estacoes').DataTable({
    "order": [[ 1, "desc" ]],
    "destroy": true,
    "sPaginationType": "full_numbers",
    "bJQueryUI": true,
    "bProcessing": true,
    "bServerSide": true,
    "sAjaxSource": $('#estacoes').data('source'),
    "columnDefs": [
        {"width": 50, "className": "text-center", "targets": 0},
        {"width": 100, "className": "text-left", "targets": 1},
        {"width": 50, "className": "text-left", "targets": 2},
        {"width": 30, "className": "text-left", "targets": 3},
        {"width": 30, "className": "text-center", "targets": 4},
        {"width": 30, "className": "text-left", "targets": 5}
      ],
    "olanguage": {
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
      "aria": {
          "sortAscending":  ": ative para ordenamento ascendente",
          "sortDescending": ": ative para ordenamento descendente"
      }
  });

    $("#estacoes tfoot th").each( function ( i ) {

    if ($(this).text() !== '') {
          var isStatusColumn = (($(this).text() == 'Status') ? true : false);
      var select = $('<select><option value=""></option></select>')
              .appendTo( $(this).empty() )
              .on( 'change', function () {
                  var val = $(this).val();

                  table.column( i )
                      .search( val ? '^'+$(this).val()+'$' : val, true, false )
                      .draw();
              } );

      // Get the Status values a specific way since the status is a anchor/image
      if (isStatusColumn) {
        var statusItems = [];

        table.column( i ).nodes().to$().each( function(d, j){
          var thisStatus = $(j).attr("data-filter");
          if($.inArray(thisStatus, statusItems) === -1) statusItems.push(thisStatus);
        } );

        statusItems.sort();

        $.each( statusItems, function(i, item){
            select.append( '<option value="'+item+'">'+item+'</option>' );
        });

      }
            // All other non-Status columns (like the example)
      else {
        table.column( i ).data().unique().sort().each( function ( d, j ) {
          select.append( '<option value="'+d+'">'+d+'</option>' );
            } );
      }

    }
    } );
} );
