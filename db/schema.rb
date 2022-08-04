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

ActiveRecord::Schema.define(version: 2022_07_26_104350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attandances", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.datetime "in_time"
    t.datetime "out_time"
    t.index ["user_id"], name: "index_attandances_on_user_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "employee_id"
    t.date "date_of_birth"
    t.string "gender"
    t.string "mobile"
    t.date "date_of_join"
    t.string "city"
    t.boolean "is_active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.string "designation"
    t.bigint "department_id"
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["employee_id"], name: "index_employees_on_employee_id", unique: true
    t.index ["user_id"], name: "index_employees_on_user_id", unique: true
  end

  create_table "finances", force: :cascade do |t|
    t.integer "basic_salary"
    t.integer "allowance"
    t.integer "deduction"
    t.integer "net_salary"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"  
    t.index ["user_id"], name: "index_finances_on_user_id"
  end

  create_table "leave_managements", force: :cascade do |t|
    t.string "leave_type"
    t.integer "leave_unit"
    t.string "reason"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.integer "status", default: 0
    t.index ["user_id"], name: "index_leave_managements_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "body"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "role", default: "employee"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "attandances", "users"
  add_foreign_key "employees", "users"
end
