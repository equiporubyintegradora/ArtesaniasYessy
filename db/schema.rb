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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160706225429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", primary_key: "id_categoria", force: :cascade do |t|
    t.string "nombre",      limit: 50,  null: false
    t.string "descripcion", limit: 100
  end

  add_index "categories", ["nombre"], name: "categories_nombre_key", unique: true, using: :btree

  create_table "categories_productos", id: false, force: :cascade do |t|
    t.integer "categoria"
    t.integer "id_producto"
  end

  create_table "clientes", primary_key: "id_cliente", force: :cascade do |t|
    t.string  "nombre_cliente", limit: 50,  null: false
    t.string  "ap_paterno",     limit: 50,  null: false
    t.string  "ap_materno",     limit: 50
    t.string  "calle",          limit: 30,  null: false
    t.integer "numero",                     null: false
    t.string  "colonia",        limit: 30,  null: false
    t.string  "municipio",      limit: 30,  null: false
    t.string  "estado",         limit: 30,  null: false
    t.string  "pais",           limit: 30,  null: false
    t.string  "telefono",       limit: 12,  null: false
    t.string  "celular",        limit: 12,  null: false
    t.string  "email",          limit: 100, null: false
  end

  create_table "disenos", primary_key: "id_diseno", force: :cascade do |t|
    t.string "diseno", limit: 255, null: false
    t.string "nombre", limit: 100, null: false
  end

  add_index "disenos", ["diseno", "nombre"], name: "uc_diseno", unique: true, using: :btree

  create_table "disenos_productos", id: false, force: :cascade do |t|
    t.integer "diseno"
    t.integer "id_producto"
  end

  create_table "empleados", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "lastname"
  end

  add_index "empleados", ["email"], name: "index_empleados_on_email", unique: true, using: :btree
  add_index "empleados", ["reset_password_token"], name: "index_empleados_on_reset_password_token", unique: true, using: :btree

  create_table "productos", primary_key: "id_producto", force: :cascade do |t|
    t.string  "fotografia",    limit: 255
    t.string  "producto",      limit: 50,                          null: false
    t.string  "descripcion",   limit: 255,                         null: false
    t.integer "tamano",                                            null: false
    t.integer "diseno",                                            null: false
    t.decimal "precio",                    precision: 8, scale: 2, null: false
    t.integer "existencia",                                        null: false
    t.integer "categoria",                                         null: false
    t.decimal "preciomayoreo",             precision: 8, scale: 2
    t.integer "piezasmayoreo"
    t.decimal "preciomenudeo",             precision: 8, scale: 2
    t.integer "piezasmenudeo"
  end

  create_table "tamanos", primary_key: "id_tamano", force: :cascade do |t|
    t.string "tamano",      limit: 50,  null: false
    t.string "descripcion", limit: 100
  end

  add_index "tamanos", ["tamano"], name: "tamanos_tamano_key", unique: true, using: :btree

  create_table "tamanos_productos", id: false, force: :cascade do |t|
    t.integer "tamano"
    t.integer "id_producto"
  end

  add_foreign_key "categories_productos", "categories", column: "categoria", primary_key: "id_categoria", name: "categories_productos_categoria_fkey"
  add_foreign_key "categories_productos", "productos", column: "id_producto", primary_key: "id_producto", name: "categories_productos_id_producto_fkey"
  add_foreign_key "disenos_productos", "disenos", column: "diseno", primary_key: "id_diseno", name: "disenos_productos_diseno_fkey"
  add_foreign_key "disenos_productos", "productos", column: "id_producto", primary_key: "id_producto", name: "disenos_productos_id_producto_fkey"
  add_foreign_key "tamanos_productos", "productos", column: "id_producto", primary_key: "id_producto", name: "tamanos_productos_id_producto_fkey"
  add_foreign_key "tamanos_productos", "tamanos", column: "tamano", primary_key: "id_tamano", name: "tamanos_productos_tamano_fkey"
end
