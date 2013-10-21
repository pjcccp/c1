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

ActiveRecord::Schema.define(:version => 20131018012709) do

  create_table "CERTIFICATESDEV", :primary_key => "Id", :force => true do |t|
    t.string    "Ip_Address"
    t.string    "Key"
    t.string    "Url"
    t.string    "Cert_Path"
    t.timestamp "TimeStamp",             :null => false
    t.string    "image_size"
    t.string    "browser_type"
    t.string    "browser_full_version"
    t.string    "browser_major_version"
    t.string    "user_agent"
    t.string    "os_type"
  end

  add_index "CERTIFICATESDEV", ["Id", "Key"], :name => "Id", :unique => true

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "certificates", :force => true do |t|
    t.string   "ip_address"
    t.string   "key"
    t.string   "url"
    t.string   "hostname"
    t.string   "provider"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "dma_code"
    t.string   "postal_code"
    t.string   "area_code"
    t.string   "gmt_offset"
    t.decimal  "image_size",            :precision => 10, :scale => 0
    t.string   "cert_path"
    t.string   "created_date"
    t.string   "browser_type"
    t.string   "browser_full_version"
    t.string   "browser_major_version"
    t.string   "user_agent"
    t.string   "os_type"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

end
