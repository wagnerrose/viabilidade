# script para select dinâmicos
# obtido do site https://www.rubyplus.com/articles/3691-Dynamic-Select-Menus-in-Rails-5
jQuery -> 
 $('#solicitacao_data_solicitacao').datepicker({
        dateFormat: 'dd/mm/yy',
        dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'],
        dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
        dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
        monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
        monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez']
    })
    
jQuery -> 
 $('#solicitacao_localidade_a').parent().hide()
 localidades = $('#solicitacao_localidade_a').html()
 $('#solicitacao_uf_a').change -> 
    uf = $('#solicitacao_uf_a :selected').text()
    escaped_uf = uf.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(localidades).filter("optgroup[label='#{uf}']").html()
    if options
      $('#solicitacao_localidade_a').html(options)
      $('#solicitacao_localidade_a').parent().show()
    else
       $('#solicitacao_localidade_a').empty()
       $('#solicitacao_localidade_a').parent().hide()

jQuery -> 
 $('#solicitacao_localidade_b').parent().hide()
 localidades = $('#solicitacao_localidade_b').html()
 $('#solicitacao_uf_b').change -> 
    uf = $('#solicitacao_uf_b :selected').text()
    escaped_uf = uf.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(localidades).filter("optgroup[label='#{uf}']").html()
    if options
      $('#solicitacao_localidade_b').html(options)
      $('#solicitacao_localidade_b').parent().show()
    else
       $('#solicitacao_localidade_b').empty()
       $('#solicitacao_localidade_b').parent().hide()
       
 jQuery ->
  $('#solicitacao').dataTable
    destroy: true, 
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


