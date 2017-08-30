json.array!(@estacoes) do |estacao|
  json.extract! estacao, :id, :pop, :nome, :endereco, :cidade, :uf, :tipo, :cedente, :latitude, :longitude
  json.url estacao_url(estacao, format: :json)
end
