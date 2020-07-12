# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_10_094025) do

  create_table "c_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "treatment_decision_method"
    t.string "name"
    t.string "place"
    t.string "tel"
    t.string "factory_name"
    t.string "factory_place"
    t.string "factory_tel"
    t.string "factory_department"
    t.string "factory_department_tel"
    t.integer "party_num"
    t.integer "party_position"
    t.string "command_and_order_department"
    t.string "command_and_order_position"
    t.string "command_and_order_name"
    t.string "command_and_order_tel"
    t.string "manu_ope_from_department"
    t.string "manu_ope_from_position"
    t.string "manu_ope_from_name"
    t.string "manu_ope_from_tel"
    t.string "complaint_department_to"
    t.string "complaint_position_to"
    t.string "complaint_name_to"
    t.string "complaint_tel_to"
    t.string "customer_postal_code"
    t.string "customer_place"
    t.string "customer_position"
    t.string "customer_name"
    t.text "work_detail"
    t.integer "c_main_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "c_limits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "c_main_infos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "uuid"
    t.integer "dispatch_personnel"
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.date "fin_date"
    t.date "contract_start"
    t.date "contract_finish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "c_origins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "origin"
    t.string "origin_company"
    t.string "origin_postal_code"
    t.string "origin_place"
    t.string "origin_president"
    t.string "worker_dispatch_permit_number"
    t.string "manu_ope_to_department"
    t.string "manu_ope_to_position"
    t.string "manu_ope_to_name"
    t.string "manu_ope_to_tel"
    t.string "complaint_department_from"
    t.string "complaint_position_from"
    t.string "complaint_name_from"
    t.string "complaint_tel_from"
    t.integer "c_main_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "c_others", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "responsibility"
    t.text "responsibility_proportion"
    t.text "limit_of_temporary_worker"
    t.integer "c_main_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "c_times", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "work_start_day"
    t.boolean "out_of_work"
    t.string "start_date"
    t.integer "work_total_time"
    t.integer "per_min"
    t.boolean "work_type_bool"
    t.string "work_change"
    t.string "work_range_a"
    t.string "regular_work_range_a"
    t.string "break_time_a"
    t.string "total_break_time_a"
    t.string "work_range_b"
    t.string "regular_work_range_b"
    t.string "break_time_b"
    t.string "total_break_time_b"
    t.string "work_range_c"
    t.string "regular_work_range_c"
    t.string "break_time_c"
    t.string "total_break_time_c"
    t.string "work_range_d"
    t.string "regular_work_range_d"
    t.string "break_time_d"
    t.string "total_break_time_d"
    t.string "work_range_e"
    t.string "regular_work_range_e"
    t.string "break_time_e"
    t.string "total_break_time_e"
    t.string "overtime_unit_price"
    t.string "legal_holiday_unit_price"
    t.string "midnight_premium_unit_price"
    t.string "deadine"
    t.string "date_of_payment"
    t.string "rounding"
    t.integer "c_main_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "c_welfares", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "uniform"
    t.string "shoes"
    t.string "dining_room"
    t.string "changing_room"
    t.integer "c_main_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
