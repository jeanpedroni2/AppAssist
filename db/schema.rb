# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_07_02_005458) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "acessorios", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoria_equipamentos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "telefone"
    t.string "endereco"
    t.string "bairro"
    t.string "numero"
    t.string "cep"
    t.string "uf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipamentos", force: :cascade do |t|
    t.bigint "categoria_equipamento_id", null: false
    t.bigint "modelo_id", null: false
    t.string "serial"
    t.string "observacoes"
    t.string "status"
    t.bigint "cliente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_equipamento_id"], name: "index_equipamentos_on_categoria_equipamento_id"
    t.index ["cliente_id"], name: "index_equipamentos_on_cliente_id"
    t.index ["modelo_id"], name: "index_equipamentos_on_modelo_id"
  end

  create_table "marcas", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modelos", force: :cascade do |t|
    t.string "descricao"
    t.bigint "marca_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marca_id"], name: "index_modelos_on_marca_id"
  end

  create_table "problemas", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string "descricao"
    t.bigint "tipo_produto_id", null: false
    t.decimal "valor"
    t.bigint "marca_id", null: false
    t.bigint "unidade_medida_id", null: false
    t.string "status"
    t.string "movestoque"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marca_id"], name: "index_produtos_on_marca_id"
    t.index ["tipo_produto_id"], name: "index_produtos_on_tipo_produto_id"
    t.index ["unidade_medida_id"], name: "index_produtos_on_unidade_medida_id"
  end

  create_table "sintomas", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_produtos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unidade_medidas", force: :cascade do |t|
    t.string "descricao"
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "equipamentos", "categoria_equipamentos"
  add_foreign_key "equipamentos", "clientes"
  add_foreign_key "equipamentos", "modelos"
  add_foreign_key "modelos", "marcas"
  add_foreign_key "produtos", "marcas"
  add_foreign_key "produtos", "tipo_produtos"
  add_foreign_key "produtos", "unidade_medidas"
end
