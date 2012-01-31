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

ActiveRecord::Schema.define(:version => 20120131091950) do

  create_table "datapulls", :force => true do |t|
    t.string    "checksum"
    t.text      "notes"
    t.integer   "time_of_day"
    t.string    "day_of_week"
    t.text      "api_data"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "landmarks", :force => true do |t|
    t.string    "name"
    t.string    "xcoord"
    t.string    "ycoord"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "schedules", :force => true do |t|
    t.string    "time_of_day"
    t.string    "day_of_week"
    t.integer   "truck_id"
    t.integer   "landmark_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "trucks", :force => true do |t|
    t.string    "name"
    t.string    "cuisine"
    t.text      "description"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.text      "menu"
    t.string    "twitter"
    t.string    "facebook"
    t.string    "website"
    t.string    "email"
    t.string    "yelp"
  end

end
