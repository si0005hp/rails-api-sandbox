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

ActiveRecord::Schema.define(version: 2019_10_28_040459) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type", default: "Article", null: false
    t.index ["type"], name: "index_articles_on_type"
  end

  create_table "book_labels", force: :cascade do |t|
    t.string "name"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_labels_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_codes", force: :cascade do |t|
    t.string "code"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "partial_car_code_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "title"
    t.integer "car_code_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type", default: "Car", null: false
    t.index ["car_code_id"], name: "index_cars_on_car_code_id"
    t.index ["type"], name: "index_cars_on_type"
  end

  create_table "comments", force: :cascade do |t|
    t.string "body"
    t.integer "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "migration_status_tests", force: :cascade do |t|
    t.string "test"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
