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

ActiveRecord::Schema.define(version: 2023_07_24_072419) do

  create_table "stacks", force: :cascade do |t|
    t.string "stack_name"
  end

  create_table "userlinks", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.string "link_url"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "devtype"
    t.integer "experience"
    t.string "image_url"
  end

  create_table "userstacks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "stack_id"
  end

end
