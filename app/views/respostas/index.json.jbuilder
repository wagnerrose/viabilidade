json.array!(@respostas) do |resposta|
  json.extract! resposta, :id, :numero_vt_id_id, :tipo, :estrutura, :descricao, :prazo, :capex, :opex_instalacao, :opex_mensal, :resultado_vt
  json.url resposta_url(resposta, format: :json)
end
