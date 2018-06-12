json.extract! servico, :id, :nome, :codigo, :created_at, :updated_at
json.url servico_url(servico, format: :json)