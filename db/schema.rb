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

ActiveRecord::Schema.define(:version => 20100328065716) do

  create_table "users", :force => true do |t|
    t.string   "full_name",          :limit => 100
    t.string   "email",              :limit => 100
    t.string   "display_name",       :limit => 15
    t.string   "password_salt",      :limit => 16
    t.string   "password_hash",      :limit => 64
    t.string   "gender",             :limit => 20
    t.date     "birthdate"
    t.string   "city",               :limit => 50
    t.string   "state",              :limit => 50
    t.string   "country"
    t.string   "time_zone",          :limit => 16
    t.boolean  "public_profile",                    :default => false
    t.string   "activation_key",     :limit => 56
    t.datetime "activation_expires"
    t.boolean  "active",                            :default => false
    t.boolean  "admin",                             :default => false
    t.boolean  "manage_rooms",                      :default => false
    t.boolean  "manage_messages",                   :default => false
    t.boolean  "manage_user",                       :default => false
    t.string   "last_ip",            :limit => 15
    t.datetime "last_access"
    t.boolean  "online",                            :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["activation_key"], :name => "index_users_on_activation_key"
  add_index "users", ["display_name"], :name => "index_users_on_display_name"
  add_index "users", ["email"], :name => "index_users_on_email"

end
