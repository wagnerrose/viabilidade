json.array!(@circuitos) do |circuito|
  json.extract! circuito, :id, :designacao, :descricao, :servico, :status, :roteamento, :asn, :bandaContratada, :bandaAtivada, :dataAtivacao, :contrato, :sap, :empresa
  json.url circuito_url(circuito, format: :json)
end
