// # script para select dinâmicos
// # obtido do site https://www.rubyplus.com/articles/3691-Dynamic-Select-Menus-in-Rails-5
// 
jQuery(function() {
  var localidade;
  localidade = $('#solicitacao_localidade_a').html();
  console.log(localidade);
  return $('#solicitacao_uf_a').change(function() {
    var uf, opcoes;
    uf = $('#solicitacao_uf_a :selected').text();
    opcoes = $(localidade).filter("optgroup[label=" + uf + "]").html();
    console.log(localidade);
    if (opcoes) {
      return $('#solicitacao_localidade_a').html(opcoes);
    } else {
      return $('#solicitacao_localidade_a').empty();
    }
  });
});

