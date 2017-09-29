# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170927172433) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nome"
    t.integer  "regra"
    t.index ["email"], name: "index_admin_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_on_reset_password_token", unique: true
  end

  create_table "admin_useres", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_useres_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_useres_on_reset_password_token", unique: true
  end

  create_table "analises", force: :cascade do |t|
    t.string   "analise"
    t.date     "dataStatus"
    t.integer  "solicitacao_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["solicitacao_id"], name: "index_analises_on_solicitacao_id"
  end

  create_table "analistas", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "fone_contato"
    t.string   "funcao"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "regional_id"
    t.index ["regional_id"], name: "index_analistas_on_regional_id"
  end

  create_table "circuitos", force: :cascade do |t|
    t.string   "designacao",      limit: 12
    t.string   "descricao",       limit: 250
    t.integer  "servico"
    t.integer  "status"
    t.integer  "roteamento"
    t.integer  "asn"
    t.integer  "bandaContratada"
    t.integer  "bandaAtivada"
    t.date     "dataAtivacao"
    t.string   "contrato"
    t.integer  "sap"
    t.integer  "empresa_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["empresa_id"], name: "index_circuitos_on_empresa_id"
  end

  create_table "contatos", force: :cascade do |t|
    t.string   "nome",       limit: 250
    t.text     "obs"
    t.integer  "empresa_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "email"
    t.index ["empresa_id"], name: "index_contatos_on_empresa_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "cnpj"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "nome_fantasia"
    t.string   "sap"
    t.string   "razao"
    t.string   "regional"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string   "logradouro", limit: 250
    t.string   "cidade",     limit: 50
    t.string   "uf",         limit: 2
    t.string   "cep",        limit: 8
    t.integer  "empresa_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["empresa_id"], name: "index_enderecos_on_empresa_id"
  end

  create_table "equipamentos", force: :cascade do |t|
    t.string   "designacao"
    t.text     "descricao"
    t.string   "tipo"
    t.string   "enderecamento"
    t.string   "firmware"
    t.string   "status"
    t.string   "arco"
    t.string   "cluster"
    t.integer  "estacao_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["estacao_id"], name: "index_equipamentos_on_estacao_id"
  end

  create_table "estacoes", force: :cascade do |t|
    t.string   "pop"
    t.string   "nome"
    t.string   "endereco"
    t.string   "cidade"
    t.string   "uf"
    t.string   "tipo"
    t.string   "cedente"
    t.decimal  "latitude",   precision: 15, scale: 13
    t.decimal  "longitude",  precision: 15, scale: 13
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "status"
  end

  create_table "justificativas", force: :cascade do |t|
    t.string   "nome"
    t.string   "cod_justificativa"
    t.string   "tipo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "localidades", force: :cascade do |t|
    t.string   "sigla_cnl"
    t.string   "cod_cnl"
    t.string   "localidade"
    t.string   "municipio"
    t.decimal  "latitude",   precision: 15, scale: 13
    t.decimal  "longitude",  precision: 15, scale: 13
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "uf_id"
    t.index ["uf_id"], name: "index_localidades_on_uf_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "tipo",       limit: 15
    t.string   "fornecedor", limit: 50
    t.integer  "velocidade"
    t.string   "origem",     limit: 50
    t.string   "uf_a",       limit: 2
    t.string   "destino",    limit: 50
    t.string   "uf_b",       limit: 2
    t.text     "obs"
    t.integer  "empresa_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["empresa_id"], name: "index_produtos_on_empresa_id"
  end

  create_table "regionais", force: :cascade do |t|
    t.string   "cod_regional"
    t.string   "nome"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "respostas", force: :cascade do |t|
    t.string   "tipo"
    t.string   "estrutura"
    t.text     "descricao"
    t.integer  "prazo"
    t.decimal  "capex",           precision: 10, scale: 2
    t.decimal  "opex_instalacao", precision: 10, scale: 2
    t.decimal  "opex_mensal",     precision: 10, scale: 2
    t.string   "resultado_vt"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "solicitacao_id"
    t.index ["solicitacao_id"], name: "index_respostas_on_solicitacao_id"
  end

  create_table "servicos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "codigo"
  end

  create_table "solicitacoes", force: :cascade do |t|
    t.string   "numero_vt"
    t.date     "data_solicitacao"
    t.string   "solicitante"
    t.string   "analista"
    t.string   "servico"
    t.integer  "banda"
    t.string   "endereco_a"
    t.string   "localidade_a"
    t.string   "uf_a"
    t.string   "endereco_b"
    t.string   "localidade_b"
    t.string   "uf_b"
    t.string   "resultado_vt"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "empresa_id"
    t.index ["empresa_id"], name: "index_solicitacaes_on_empresa_id"
  end

  create_table "telefones", force: :cascade do |t|
    t.string   "telefone",   limit: 12
    t.integer  "contato_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["contato_id"], name: "index_telefones_on_contato_id"
  end

  create_table "uf", force: :cascade do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nome"
    t.integer  "regra"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
