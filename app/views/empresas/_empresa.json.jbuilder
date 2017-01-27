json.extract! empresa, :id, :nome, :endereco, :cidade, :uf, :nome_contato, :telefone_contato, :cnpj, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)