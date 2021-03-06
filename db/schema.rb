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

ActiveRecord::Schema.define(:version => 20141128031814) do

  create_table "advertisements", :force => true do |t|
    t.string   "newspaper_name"
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "cost",           :precision => 10, :scale => 2
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.integer  "property_id"
  end

  create_table "customers_visitations", :id => false, :force => true do |t|
    t.integer "customer_id"
    t.integer "visitation_id"
  end

  create_table "financial_institutions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "interviews", :force => true do |t|
    t.date     "date"
    t.time     "time"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "subsidiary_agency_id"
    t.integer  "customer_id"
  end

  create_table "leases", :force => true do |t|
    t.integer  "duration"
    t.decimal  "monthly_fee", :precision => 10, :scale => 2
    t.integer  "property_id"
    t.integer  "customer_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "pictures", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "property_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "properties", :force => true do |t|
    t.string   "property_type"
    t.string   "address"
    t.string   "location"
    t.integer  "number_of_bedrooms"
    t.integer  "number_of_bathrooms"
    t.integer  "number_of_other_rooms"
    t.decimal  "rent",                  :precision => 10, :scale => 2
    t.boolean  "deletion_status"
    t.integer  "subsidiary_agency_id"
    t.integer  "owner_id"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  create_table "properties_visiting_lists", :id => false, :force => true do |t|
    t.integer "property_id"
    t.integer "visiting_list_id"
  end

  create_table "subsidiary_agencies", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                :null => false
    t.string   "crypted_password",     :null => false
    t.string   "salt",                 :null => false
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "maximum_rental"
    t.text     "preferences"
    t.integer  "subsidiary_agency_id"
    t.string   "type"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "visitations", :force => true do |t|
    t.date     "date"
    t.time     "time"
    t.string   "comments"
    t.integer  "property_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "visiting_lists", :force => true do |t|
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
