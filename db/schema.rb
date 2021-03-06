# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100414134914) do

  create_table "addresses", :force => true do |t|
    t.string   "name"
    t.string   "line1"
    t.string   "line2"
    t.string   "ville"
    t.integer  "cp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.string   "abbrev"
    t.text     "notes"
  end

  create_table "infos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "raccourci"
    t.string   "telephone"
    t.string   "fax"
    t.string   "adresse"
    t.string   "ville"
    t.integer  "cp"
    t.string   "notes"
    t.string   "url"
    t.integer  "category_id"
    t.string   "person"
    t.string   "state"
  end

  create_table "ownerships", :force => true do |t|
    t.integer "information_id"
    t.string  "information_type"
    t.integer "category_id"
  end

  create_table "phone_numbers", :force => true do |t|
    t.string   "name"
    t.string   "number"
    t.string   "nature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "urls", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
