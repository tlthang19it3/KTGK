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

ActiveRecord::Schema.define(version: 2021_04_05_064817) do

  create_table "authors", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_tac_gia"
    t.string "ten_tac_gia"
    t.string "website"
    t.string "ghi_chu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "books", charset: "utf8mb4", force: :cascade do |t|
    t.integer "ma_sach"
    t.string "ten_sach"
    t.bigint "authors_id", null: false
    t.bigint "nha_xuat_bans_id", null: false
    t.bigint "the_loais_id", null: false
    t.integer "nam_xb"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["authors_id"], name: "index_books_on_authors_id"
    t.index ["nha_xuat_bans_id"], name: "index_books_on_nha_xuat_bans_id"
    t.index ["the_loais_id"], name: "index_books_on_the_loais_id"
  end

  create_table "nha_xuat_bans", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_nxb"
    t.string "ten_nxb"
    t.string "dia_chi"
    t.string "email"
    t.string "nguoi_dai_dien"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "the_loais", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_the_loai"
    t.string "ten_the_loai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "books", "authors", column: "authors_id"
  add_foreign_key "books", "nha_xuat_bans", column: "nha_xuat_bans_id"
  add_foreign_key "books", "the_loais", column: "the_loais_id"
end
