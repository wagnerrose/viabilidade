# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#estacoes').dataTable
    destroy: true,
    sPaginationType: "full_numbers",
    bJQueryUI: true,
    bProcessing: true,
    bServerSide: true,
    sAjaxSource: $('#estacoes').data('source'),
    columnDefs: [
        {width: 50, className: "text-center", targets: 0},
        {width: 100, className: "text-left", targets: 1},
        {width: 50, className: "text-left", targets: 2},
        {width: 30, className: "text-left", targets: 3},
        {width: 30, className: "text-center", targets: 4},
        {width: 30, className: "text-left", targets: 5}
      ],
    language: {
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
  }
