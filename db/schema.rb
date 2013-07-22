# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130508022439) do

  create_table "accounts", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "budgets", :force => true do |t|
    t.integer  "cliente_id"
    t.string   "clientenome"
    t.string   "clienteendereco"
    t.string   "clientenumero"
    t.string   "clientebairro"
    t.string   "clientecidade"
    t.string   "clientecep"
    t.string   "clienteestado"
    t.integer  "vendedor_id"
    t.string   "vendedornome"
    t.integer  "formapagamento_id"
    t.decimal  "valorfrete",          :precision => 10, :scale => 0
    t.decimal  "valorseguro",         :precision => 10, :scale => 0
    t.decimal  "valoroutrasdespesas", :precision => 10, :scale => 0
    t.integer  "tipodesconto"
    t.decimal  "quantidadedesconto",  :precision => 10, :scale => 0
    t.decimal  "valortotaldesconto",  :precision => 10, :scale => 0
    t.decimal  "quantidadecomissao",  :precision => 10, :scale => 0
    t.decimal  "valortotalcomissao",  :precision => 10, :scale => 0
    t.decimal  "valortotalprodutos",  :precision => 10, :scale => 0
    t.decimal  "valortotalpedido",    :precision => 10, :scale => 0
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  create_table "cashflows", :force => true do |t|
    t.integer  "company_id"
    t.integer  "category_id"
    t.integer  "account_id"
    t.date     "datalancamento"
    t.string   "receitadespesa"
    t.decimal  "valor",          :precision => 10, :scale => 0
    t.date     "datavencimento"
    t.date     "databaixa"
    t.string   "observacao"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "cidade"
    t.string   "estado"
    t.string   "pais"
    t.string   "codigocidade"
    t.string   "codigoestado"
    t.string   "codigopais"
    t.decimal  "latitude",     :precision => 10, :scale => 0
    t.decimal  "longitude",    :precision => 10, :scale => 0
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cep"
    t.string   "email"
    t.string   "login"
    t.string   "senha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "csosns", :force => true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "csts", :force => true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.integer  "cidade_id"
    t.string   "cep"
    t.string   "estado"
    t.text     "observacao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ncms", :force => true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "referencia"
    t.string   "nome"
    t.decimal  "saldoatual",       :precision => 10, :scale => 0
    t.integer  "unidade_id"
    t.decimal  "valorcompra",      :precision => 10, :scale => 0
    t.decimal  "valorcompramedio", :precision => 10, :scale => 0
    t.decimal  "valorvenda",       :precision => 10, :scale => 0
    t.integer  "ncm_id"
    t.decimal  "pesoliquido",      :precision => 10, :scale => 0
    t.decimal  "pesobruto",        :precision => 10, :scale => 0
    t.decimal  "volumem3",         :precision => 10, :scale => 0
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "providers", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.integer  "cidade_id"
    t.string   "cep"
    t.string   "estado"
    t.text     "observacao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "requests", :force => true do |t|
    t.integer  "cliente_id"
    t.string   "clientenome"
    t.string   "clienteendereco"
    t.string   "clientenumero"
    t.string   "clientebairro"
    t.string   "clientecidade"
    t.string   "clientecep"
    t.string   "clienteestado"
    t.integer  "vendedor_id"
    t.string   "vendedornome"
    t.integer  "formapagamento_id"
    t.decimal  "valorfrete",          :precision => 10, :scale => 0
    t.decimal  "valorseguro",         :precision => 10, :scale => 0
    t.decimal  "valoroutrasdespesas", :precision => 10, :scale => 0
    t.integer  "tipodesconto"
    t.decimal  "quantidadedesconto",  :precision => 10, :scale => 0
    t.decimal  "valortotaldesconto",  :precision => 10, :scale => 0
    t.decimal  "quantidadecomissao",  :precision => 10, :scale => 0
    t.decimal  "valortotalcomissao",  :precision => 10, :scale => 0
    t.decimal  "valortotalprodutos",  :precision => 10, :scale => 0
    t.decimal  "valortotalpedido",    :precision => 10, :scale => 0
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  create_table "sales", :force => true do |t|
    t.integer  "cliente_id"
    t.string   "clientenome"
    t.string   "clienteendereco"
    t.string   "clientenumero"
    t.string   "clientebairro"
    t.string   "clientecidade"
    t.string   "clientecep"
    t.string   "clienteestado"
    t.integer  "vendedor_id"
    t.string   "vendedornome"
    t.integer  "formapagamento_id"
    t.decimal  "valorfrete",          :precision => 10, :scale => 0
    t.decimal  "valorseguro",         :precision => 10, :scale => 0
    t.decimal  "valoroutrasdespesas", :precision => 10, :scale => 0
    t.integer  "tipodesconto"
    t.decimal  "quantidadedesconto",  :precision => 10, :scale => 0
    t.decimal  "valortotaldesconto",  :precision => 10, :scale => 0
    t.decimal  "quantidadecomissao",  :precision => 10, :scale => 0
    t.decimal  "valortotalcomissao",  :precision => 10, :scale => 0
    t.decimal  "valortotalprodutos",  :precision => 10, :scale => 0
    t.decimal  "valortotalpedido",    :precision => 10, :scale => 0
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  create_table "sellers", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.integer  "cidade_id"
    t.string   "cep"
    t.string   "estado"
    t.text     "observacao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "services", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.decimal  "valor",      :precision => 10, :scale => 0
    t.integer  "unidade_id"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "units", :force => true do |t|
    t.string   "nome"
    t.string   "abreviado"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
