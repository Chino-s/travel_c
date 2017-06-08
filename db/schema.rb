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

ActiveRecord::Schema.define(:version => 20170608070319) do

  create_table "airports", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "areas", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "country_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "climates", :force => true do |t|
    t.integer  "country_id",      :null => false
    t.string   "season"
    t.integer  "temperature_sub"
    t.integer  "precipitation"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name",            :null => false
    t.string   "language",        :null => false
    t.string   "capital",         :null => false
    t.integer  "area_id",         :null => false
    t.integer  "popular_ranking"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "imagephoto"
    t.string   "googlemap"
  end

  create_table "currencies", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "exchange",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "food_categories", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "food_cultures", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "country_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "foods", :force => true do |t|
    t.string   "name",             :null => false
    t.integer  "country_id",       :null => false
    t.integer  "food_category_id", :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "heritage_categories", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prices", :force => true do |t|
    t.integer  "country_id",  :null => false
    t.integer  "currency_id", :null => false
    t.integer  "water_price", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "spot_categories", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "spots", :force => true do |t|
    t.string   "name",             :null => false
    t.integer  "area_id",          :null => false
    t.integer  "spot_category_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "country_id"
  end

  create_table "traffics", :force => true do |t|
    t.integer  "country_id",          :null => false
    t.integer  "fright_time"
    t.integer  "avg_airticket_price"
    t.integer  "airport_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "world_heritages", :force => true do |t|
    t.string   "name",              :null => false
    t.integer  "area_id",           :null => false
    t.integer  "world_heritage_id", :null => false
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
