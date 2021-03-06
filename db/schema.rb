# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_01_220158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.float "weekly_hours"
    t.float "total_hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "working_times", force: :cascade do |t|
    t.string "day"
    t.time "time_i"
    t.time "time_e"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "subject_id", null: false
    t.index ["subject_id"], name: "index_working_times_on_subject_id"
  end

  add_foreign_key "working_times", "subjects"
end
