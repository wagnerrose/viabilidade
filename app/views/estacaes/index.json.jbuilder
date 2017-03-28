json.array!(@estacaes) do |estacao|
  json.extract! estacao, :id, :estacao, :nome, :cidade, :status, :cedente, :tipo, :latitude, :longitude
  json.url estacao_url(estacao, format: :json)
end
