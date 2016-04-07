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

ActiveRecord::Schema.define(version: 20160401042513) do

  create_table "diseases", primary_key: "dis_id", force: :cascade do |t|
    t.string "dis_description", limit: 45
  end

  create_table "doc_types", force: :cascade do |t|
    t.string "doctype_description", limit: 255
  end

  create_table "hospital", primary_key: "hos_id", force: :cascade do |t|
    t.string "hos_name", limit: 45
  end

  create_table "nacionalidads", force: :cascade do |t|
    t.string "description", limit: 255
  end

  create_table "personas", force: :cascade do |t|
    t.string "nombre",          limit: 255
    t.string "apelllido",       limit: 255
    t.date   "fechaNacimiento"
    t.string "teleCelular",     limit: 255
    t.string "teleParticular",  limit: 255
    t.string "teleOficina",     limit: 255
    t.string "numeroDocumento", limit: 255
    t.string "email",           limit: 255
    t.string "profesion",       limit: 255
    t.string "entreprise",      limit: 255
    t.string "nacionalidad_id", limit: 45
    t.string "dt_id",           limit: 45
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students222", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "stu_name",       limit: 45
    t.string   "stu_lastName",   limit: 45
    t.date     "stu_bday"
    t.integer  "stu_natio_id",   limit: 4
    t.integer  "stu_dt_id",      limit: 4
    t.string   "stu_doc_num",    limit: 45
    t.binary   "stu_consul",     limit: 1
    t.integer  "stu_adress_id",  limit: 4
    t.integer  "stu_disease_id", limit: 4
    t.string   "stu_otherInfo",  limit: 45
    t.string   "stu_email",      limit: 45
    t.string   "studentscol",    limit: 45
  end

end
