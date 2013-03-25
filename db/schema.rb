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

ActiveRecord::Schema.define(:version => 20130325055434) do

  create_table "abouts", :force => true do |t|
    t.text     "content"
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "abouts", ["profile_id", "updated_at"], :name => "index_abouts_on_profile_id_and_updated_at"

  create_table "accounts", :force => true do |t|
    t.string   "email"
    t.string   "authorization"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "enabled",         :default => 1
    t.string   "ty"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "accounts", ["email"], :name => "index_accounts_on_email", :unique => true
  add_index "accounts", ["remember_token"], :name => "index_accounts_on_remember_token"

  create_table "activities", :force => true do |t|
    t.text     "content"
    t.integer  "account_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "profile_id"
  end

  add_index "activities", ["created_at"], :name => "index_activities_on_account_id_and_created_at"
  add_index "activities", ["profile_id"], :name => "index_activities_on_profile_id"

  create_table "constants", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "favbeers", :force => true do |t|
    t.string   "b1"
    t.string   "b2"
    t.string   "b3"
    t.string   "b4"
    t.string   "b5"
    t.string   "b6"
    t.string   "b7"
    t.string   "b8"
    t.string   "b9"
    t.string   "b10"
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "favbeers", ["profile_id", "updated_at"], :name => "index_favbeers_on_profile_id_and_updated_at"

  create_table "favbreweries", :force => true do |t|
    t.string   "b1"
    t.string   "b2"
    t.string   "b3"
    t.string   "b4"
    t.string   "b5"
    t.string   "b6"
    t.string   "b7"
    t.string   "b8"
    t.string   "b9"
    t.string   "b10"
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "favbreweries", ["profile_id", "updated_at"], :name => "index_favbreweries_on_profile_id_and_updated_at"

  create_table "honorablebeers", :force => true do |t|
    t.text     "content"
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "honorablebeers", ["profile_id", "updated_at"], :name => "index_honorablebeers_on_profile_id_and_updated_at"

  create_table "interests", :force => true do |t|
    t.text     "content"
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "interests", ["profile_id", "created_at"], :name => "index_interests_on_profile_id_and_created_at"

  create_table "locations", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "profile_id"
  end

  add_index "locations", ["profile_id", "updated_at"], :name => "index_locations_on_profile_id_and_updated_at"

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "account_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["account_id", "created_at"], :name => "index_microposts_on_account_id_and_created_at"

  create_table "miscs", :force => true do |t|
    t.text     "content"
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "miscs", ["profile_id", "updated_at"], :name => "index_miscs_on_profile_id_and_updated_at"

  create_table "profiles", :force => true do |t|
    t.integer  "wall"
    t.integer  "ts"
    t.string   "s1"
    t.string   "s2"
    t.string   "s3"
    t.string   "s4"
    t.string   "s5"
    t.string   "s6"
    t.string   "s7"
    t.string   "s8"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "account_id"
  end

  add_index "profiles", ["account_id", "created_at"], :name => "index_profiles_on_account_id_and_created_at"

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "services", :force => true do |t|
    t.text     "content"
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "services", ["profile_id", "updated_at"], :name => "index_services_on_profile_id_and_updated_at"

end
