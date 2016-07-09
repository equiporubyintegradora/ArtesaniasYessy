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

ActiveRecord::Schema.define(version: 20160709072734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "nombre",      null: false
    t.string   "descripcion", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "categories", ["nombre"], name: "index_categories_on_nombre", using: :btree

  create_table "categories_productos", force: :cascade do |t|
    t.integer  "categoria"
    t.integer  "id_producto"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "disenos", force: :cascade do |t|
    t.string   "diseno",     null: false
    t.string   "nombre",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "disenos", ["diseno"], name: "index_disenos_on_diseno", using: :btree

  create_table "disenos_productos", force: :cascade do |t|
    t.integer  "diseno"
    t.integer  "id_producto"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

  create_table "productos", force: :cascade do |t|
    t.string   "fotografia"
    t.string   "producto",                              null: false
    t.string   "descripcion",                           null: false
    t.integer  "tamano",                                null: false
    t.integer  "largo",                                 null: false
    t.integer  "alto",                                  null: false
    t.integer  "ancho",                                 null: false
    t.integer  "diseno",                                null: false
    t.decimal  "precio",        precision: 8, scale: 2, null: false
    t.integer  "existencia",                            null: false
    t.integer  "categoria",                             null: false
    t.decimal  "preciomayoreo", precision: 8, scale: 2, null: false
    t.integer  "piezasmayoreo",                         null: false
    t.decimal  "preciomenudeo", precision: 8, scale: 2, null: false
    t.integer  "piezasmenudeo",                         null: false
    t.integer  "id_producto"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "productos", ["producto"], name: "index_productos_on_producto", using: :btree

  create_table "tamanos", force: :cascade do |t|
    t.string   "tamano",      null: false
    t.string   "descripcion", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tamanos", ["tamano"], name: "index_tamanos_on_tamano", using: :btree

  create_table "tamanos_productos", force: :cascade do |t|
    t.integer  "tamano"
    t.integer  "id_producto"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "categories_productos", "categories", column: "categoria", name: "categories_productos_categoria_fkey"
  add_foreign_key "categories_productos", "productos", column: "id", name: "categories_productos_id_fkey"
  add_foreign_key "disenos_productos", "disenos", column: "diseno", name: "disenos_productos_diseno_fkey"
  add_foreign_key "disenos_productos", "productos", column: "id", name: "disenos_productos_id_fkey"
  add_foreign_key "tamanos_productos", "productos", column: "id", name: "tamanos_productos_id_fkey"
  add_foreign_key "tamanos_productos", "tamanos", column: "tamano", name: "tamanos_productos_tamano_fkey"
end
