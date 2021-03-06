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

ActiveRecord::Schema.define(version: 20160403081528) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.text     "body",         limit: 65535
    t.datetime "published_at"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "excerpt",      limit: 255
    t.string   "location",     limit: 255
    t.integer  "user_id",      limit: 4
  end

  create_table "articles_categories", id: false, force: :cascade do |t|
    t.integer "article_id",  limit: 4
    t.integer "category_id", limit: 4
  end

  add_index "articles_categories", ["article_id"], name: "index_articles_categories_on_article_id", using: :btree
  add_index "articles_categories", ["category_id"], name: "index_articles_categories_on_category_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "article_id", limit: 4
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "news", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "name",       limit: 255
    t.date     "birtday"
    t.string   "color",      limit: 255
    t.string   "twitter",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           limit: 255
    t.string   "hashed_password", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "articles_categories", "articles"
  add_foreign_key "articles_categories", "categories"
end
