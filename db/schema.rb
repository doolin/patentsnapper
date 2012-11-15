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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121115173023) do

  create_table "assignees", :force => true do |t|
    t.string   "patent"
    t.integer  "asgtype"
    t.string   "assignee"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "nationality"
    t.string   "residence"
    t.integer  "asgseq"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "citations", :force => true do |t|
    t.string   "patent"
    t.string   "cit_date"
    t.string   "cit_name"
    t.string   "cit_kind"
    t.string   "cit_country"
    t.string   "citation"
    t.string   "category"
    t.string   "citseq"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "claims", :force => true do |t|
    t.string   "patent"
    t.string   "claim"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inventors", :force => true do |t|
    t.string   "patent"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.string   "code"
    t.string   "nationality"
    t.string   "invseq"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "invpats", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.float    "lat"
    t.float    "lon"
    t.integer  "invseq"
    t.string   "patent"
    t.integer  "gyear"
    t.string   "appyearstr"
    t.string   "appdatestr"
    t.string   "assignee"
    t.string   "asgnum"
    t.string   "patentclass"
    t.string   "coauthor"
    t.string   "invnum"
    t.string   "lower"
    t.string   "upper"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "invpats", ["assignee"], :name => "index_invpats_on_assignee"
  add_index "invpats", ["firstname", "lastname"], :name => "index_invpats_on_firstname_and_lastname"
  add_index "invpats", ["firstname"], :name => "index_invpats_on_firstname"
  add_index "invpats", ["invnum"], :name => "index_invpats_on_invnum", :unique => true
  add_index "invpats", ["lastname"], :name => "index_invpats_on_lastname"
  add_index "invpats", ["lower"], :name => "index_invpats_on_lower"
  add_index "invpats", ["patent"], :name => "index_invpats_on_patent"
  add_index "invpats", ["upper"], :name => "index_invpats_on_upper"

  create_table "lawyers", :force => true do |t|
    t.string   "patent"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "lawcountry"
    t.string   "orgname"
    t.integer  "lawseq"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pat_descs", :force => true do |t|
    t.string   "patent",     :limit => 512
    t.string   "text",       :limit => 4096
    t.string   "title",      :limit => 512
    t.string   "abstract",   :limit => 4096
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "patent_classes", :force => true do |t|
    t.string   "patent"
    t.integer  "prim"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "patentclass"
    t.string   "subclass"
  end

  create_table "patents", :force => true do |t|
    t.string   "patent"
    t.string   "kind"
    t.integer  "claims"
    t.string   "apptype"
    t.string   "appnum"
    t.string   "gdate"
    t.string   "gyear"
    t.string   "appdate"
    t.integer  "appyear"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
