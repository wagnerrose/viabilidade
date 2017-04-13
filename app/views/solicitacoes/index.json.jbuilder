json.array!(@solicitacoes) do |solicitacao|
  json.extract! solicitacao, :id, :numero_vt, :empresa_id, :data_solicitacao, :solicitante, :analista, :servico, :banda, :endereco_a, :localidade_a, :uf_a, :endereco_b, :localidade_b, :uf_b, :resultado_vt
  json.url solicitacao_url(solicitacao, format: :json)
end
