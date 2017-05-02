json.extract! localidade, :id, :localidade, :estacao_id, :cod_cnl, :sigla_cnl, 
            :municipio, :latitude, :longitude :created_at, :updated_at
json.url localidade_url(localidade, format: :json)