RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.main_app_name = ["TELEBRAS", "Viabilidade"]
  config.total_columns_width = 9999999
  #config.horizontal_scroll_list = {num_frozen_columns: 0}

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    #show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
    config.included_models = ["Analise", "Analista", "Circuito","Circuitodado","Contato",
      "Conexao", "Empresa", "Equipamento", "Estacao", "Justificativa",
      "Localidade", "Produto", "Regional", "Servico", "Solicitacao","Telefone", "Uf"]
      config.excluded_models = ["Endereco", "Resposta"]

  config.model Analista do
    configure :regional, :belongs_to_association
    list do
      sort_by :nome
      field :nome
      field :email
      field :fone_contato do
        label "Telefone"
      end
      field :funcao do
        label "Função"
      end
      field :regional do
        pretty_value do
          value.try(:nome)
        end
        column_width  400
      end
    end
    exclude_fields :created_at, :updated_at
  end
  config.model Regional do
    list do
      sort_by :nome
      field :nome
      field :cod_regional do
        label "Código"
      end
    end
    exclude_fields :created_at, :updated_at
  end
  config.model Circuito do
    list do
      sort_by :designacao
      field :designacao
      field :descricao
      field :servico
      field :status
      field :roteamento
      field :bandaAtivada
    end
    exclude_fields :created_at, :updated_at, :id
  end

  config.model Circuitodado do
    configure :circuito, :belongs_to_association
    configure :equipamento, :belongs_to_association
    configure :estacao, :belongs_to_association

    list do
      sort_by :circuito_id, :pta
      field :circuito do
        pretty_value do
          value.try(:designacao)
        end
        column_width 120
      end
      field :pta do
        column_width 60
      end
      field :endereco do
        column_width  300
      end
      field :municipio do
        column_width 200
      end
      field :uf do
        label "UF"
        column_width 60
      end
      field :estacaoAcesso do
        label "Est Acesso"
        column_width 120
      end
      field :estacaoCliente do
        label "Est Cliente"
        column_width 120
      end
      field :switchAcesso do
        label "SW Acesso"
        column_width 120
      end
      field :pontoEntrega do
        label "Pto Entrega"
        column_width 120
      end
      field :tipoAcesso do
        label "Tipo Acesso"
        column_width 200
      end
      field :fornecedorAcesso do
        label "Fornecedor"
      end
      field :fornecedorInfo do
        label "Informação"
      end

      field :switchCliente do
        label "SW Cliente"
        column_width  120
      end
      field :dgo
      field :abordagem
      field :numeroFibra
      field :trechoFibra
      field :anel
      field :latitude
      field :longitude
      field :estacao do
        pretty_value do
          value.try(:pop)
        end
        label "POP"
      end
      field :equipamento do
        pretty_value do
          value.try(:designacao)
        end
        label "Equipamento"
      end
     end
     exclude_fields :created_at, :updated_at, :id
  end

  config.model Contato do
    list do
      sort_by :nome
      field :nome do
        column_width 220
      end
      field :empresa do
        pretty_value do
          value.try(:razao)
        end
        column_width 320
      end
      field :telefone do
        column_width 120
      end
      field :email do
        label "E-Mail"
        column_width 220
      end
      field :obs do
        column_width 260
      end
    end
    exclude_fields :created_at, :updated_at, :id
  end

  config.model Empresa do
    list do
      sort_by :razao
      field :razao
      field :nome_fantasia
      field :cnpj
      field :sap
      field :regional
    end
    exclude_fields :created_at, :updated_at, :id
  end

  config.model Equipamento do
    configure :estacao, :belongs_to_association
    list do
      sort_by :designacao
      field :designacao
      field :descricao
      field :tipoEquipamento do
        label "Tipo"
      end
      field :enderecamento
      field :firmware
      field :statusEquipamento do
        label "Status"
      end
      field :estacao do
        pretty_value do
          value.try(:pop)
        end
      end
    end
    exclude_fields :created_at, :updated_at, :id
  end

  config.model Estacao do
    configure :equipamento, :belongs_to_association
    configure :circuitodado, :belongs_to_association

    list do
      sort_by :pop
      field :pop do
        label "POP"
        column_width 120
      end
      field :nome do
        column_width 270
      end
      field :cidade do
        column_width 120
      end
      field :uf do
        column_width 40
      end
      field :cedente do
        column_width 90
      end
      field :statusEstacao do
        label "Status"
      end
      field :tipoEstacao do
        label "Tipo"
      end
      field :latitude
      field :longitude
    end
    exclude_fields :created_at, :updated_at, :id
    export do
      field :pop
      field :nome
    end
  end

  config.model Justificativa do
    list do
      sort_by :nome
      field :nome do
        label "Justificativa"
        column_width 350
      end
      field :cod_justificativa do
        label "Código"
        column_width 90
      end
      field :tipo
    end
    exclude_fields :created_at, :updated_at, :id
  end


  config.model Localidade do
    configure :uf, :belongs_to_association
    list do
      sort_by :municipio
      field :municipio do
        column_width 250
      end
      field :siglaMunicipio do
        label "Sigla"
        column_width 60
      end
      field :localidade do
        column_width 250
      end
      field :siglaCNL do
        label "Sigla"
      end
      field :uf do
        pretty_value do
          value.try(:sigla)
        end
        label "UF"
      end
      field :latitude
      field :longitude
    end
    exclude_fields :created_at, :updated_at, :id
  end

  config.model Produto do
    configure :empresa, :belongs_to_association
    list do
      sort_by :empresa
      field :empresa do
        pretty_value do
          value.try(:razao)
        end
      end
      field :tipo
      field :fornecedor
      field :velocidade
      field :origem
      field :uf_a do
        label "UF A"
        column_width 60
      end
      field :destino
      field :uf_b do
        label "UF B"
        column_width 60
      end
      field :obs do
        column_width 250
      end
    end
    exclude_fields :created_at, :updated_at, :id
  end

  config.model Regional do
    list do
      sort_by :nome
      field :nome
      field :cod_regional
    end
    exclude_fields :created_at, :updated_at, :id
  end

  config.model Servico do
    list do
      sort_by :nome
      field :nome
      field :codigo
    end
    exclude_fields :created_at, :updated_at, :id
  end

  config.model Telefone do
    configure :contato, :belongs_to_association
    list do
      sort_by :telefone
      field :telefone
      field :contato do
        pretty_value do
          value.try(:nome)
        end
      end
    end
    exclude_fields :created_at, :updated_at, :id
  end


  config.model Uf do
    list do
      sort_by :nome
      field :nome
      field :sigla
    end
    exclude_fields :created_at, :updated_at, :id
  end
end
