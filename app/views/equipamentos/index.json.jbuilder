json.array!(@equipamentos) do |equipamento|
  json.extract! equipamento, :id, :designacao, :descricao, :tipo, :enderecamento, :firmware, :estacao_id, :status, :arco, :cluster
  json.url equipamento_url(equipamento, format: :json)
end
