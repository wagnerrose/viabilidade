json.array!(@equipamentos) do |equipamento|
  json.extract! equipamento, :id, :designacao, :descricao, :tipo, :enderecamento, :firmware, :status, :arco, :cluster, :estacao_id
  json.url equipamento_url(equipamento, format: :json)
end
