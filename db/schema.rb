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

ActiveRecord::Schema.define(version: 20180117103459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.text "dept_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "timings"
  end

  create_table "tasks", force: :cascade do |t|
    t.text "user_id"
    t.text "what_to_do"
    t.text "what_done"
    t.boolean "checkbox"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "date"
    t.text "completed"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'time with time zone' for column 'timings'

end
