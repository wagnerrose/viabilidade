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

ActiveRecord::Schema.define(version: 20170127181937) do

  create_table "analistas", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "id_regional"
    t.string   "fone_contato"
    t.string   "funcao"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cidade"
    t.string   "uf"
    t.string   "nome_contato"
    t.string   "telefone_contato"
    t.string   "cnpj"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "justificativas", force: :cascade do |t|
    t.string   "nome"
    t.string   "cod_justificativa"
    t.string   "tipo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "localidades", force: :cascade do |t|
    t.string   "nome"
    t.string   "uf"
    t.string   "cod_localidade"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "pop", force: :cascade do |t|
    t.string   "nome"
    t.string   "designacao"
    t.string   "detentor"
    t.string   "uf"
    t.string   "cod_localidade"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "regionais", force: :cascade do |t|
    t.string   "codigo_regional"
    t.string   "nome"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "servicos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uf", force: :cascade do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vt", force: :cascade do |t|
    t.string   "vt_numero"
    t.integer  "id_cliente"
    t.date     "data_solicitacao"
    t.string   "solicitante"
    t.string   "analista"
    t.string   "servico"
    t.string   "uf_origem"
    t.string   "origem"
    t.string   "uf_destino"
    t.string   "destino"
    t.string   "popa"
    t.string   "popb"
    t.string   "resultado_vt"
    t.string   "justificativa_vt"
    t.date     "data_resultado"
    t.text     "comentario"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
