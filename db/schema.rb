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

ActiveRecord::Schema.define(version: 20171114230914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "site_contents", force: :cascade do |t|
    t.bigint "site_info_id"
    t.text "body"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_info_id"], name: "index_site_contents_on_site_info_id"
  end

  create_table "site_infos", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.text "meta_tags"
    t.text "site_description"
    t.text "meaning_description"
    t.text "meaning_intro"
    t.text "meaning_body"
    t.text "letter_intro"
    t.text "meaning_outro"
    t.text "meaning_footer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "site_intro"
    t.string "meanings_url"
    t.string "meanings_html_description"
  end

  create_table "sitemaps", force: :cascade do |t|
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "site_contents", "site_infos"
end