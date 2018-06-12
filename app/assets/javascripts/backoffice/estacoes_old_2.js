$(document).ready(function() {
   var table = $('#estacoes').DataTable( {
      "order": [[ 1, "desc" ]],
      "destroy": true,
      "sPaginationType": "full_numbers",
      "bJQueryUI": true,
      "bProcessing": true,
      "bServerSide": true,
        "sAjaxSource": $('#estacoes').data('source'),
    } );

$("#estacoes tfoot th").each( function ( i ) {

    if ($(this).text() !== '') {
          var isStatusColumn = (($(this).text() == 'Pop') ? true : false);
          var select = $('<select><option value=""></option></select>')
              .appendTo( $(this).empty() )
              .on( 'change', function () {
                  var val = $.fn.dataTable.util.escapeRegex(
                      $(this).val()
                  );

                  table.column( i )
                      .search( val ? '^'+$(this).val()+'$' : val, true, false )
                      .draw();
              } );

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
