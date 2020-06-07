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

ActiveRecord::Schema.define(version: 20200607012155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engenheiros", force: :cascade do |t|
    t.string   "nome"
    t.string   "crea"
    t.string   "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "funcao"
    t.decimal  "salario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projetos", force: :cascade do |t|
    t.integer  "engenheiro_id"
    t.integer  "cliente_id"
    t.decimal  "pagamento"
    t.integer  "material_id"
    t.integer  "evento_id"
    t.integer  "funcionario_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["cliente_id"], name: "index_projetos_on_cliente_id", using: :btree
    t.index ["engenheiro_id"], name: "index_projetos_on_engenheiro_id", using: :btree
    t.index ["evento_id"], name: "index_projetos_on_evento_id", using: :btree
    t.index ["funcionario_id"], name: "index_projetos_on_funcionario_id", using: :btree
    t.index ["material_id"], name: "index_projetos_on_material_id", using: :btree
  end

  create_table "quantidade_materials", force: :cascade do |t|
    t.integer  "material_id"
    t.integer  "quantidade"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["material_id"], name: "index_quantidade_materials_on_material_id", using: :btree
  end

  create_table "reformas", force: :cascade do |t|
    t.integer  "projeto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["projeto_id"], name: "index_reformas_on_projeto_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "projetos", "clientes"
  add_foreign_key "projetos", "engenheiros"
  add_foreign_key "projetos", "eventos"
  add_foreign_key "projetos", "funcionarios"
  add_foreign_key "quantidade_materials", "materials"
  add_foreign_key "reformas", "projetos"
end
