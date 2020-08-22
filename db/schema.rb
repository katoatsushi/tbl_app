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

ActiveRecord::Schema.define(version: 2020_08_03_095316) do

  create_table "bank_accounts", force: :cascade do |t|
    t.string "bank_name"
    t.string "bank_name_other"
    t.string "branch_name"
    t.string "sales_office"
    t.string "yucho_bank"
    t.integer "bank_type"
    t.string "account_number"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "c_details", force: :cascade do |t|
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

  create_table "c_limits", force: :cascade do |t|
    t.string "conflict_days"
    t.date "business_unit_unit_conflict_day"
    t.date "three_years_later"
    t.integer "c_main_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "c_main_infos", force: :cascade do |t|
    t.integer "contract_id"
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

  create_table "c_origins", force: :cascade do |t|
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

  create_table "c_others", force: :cascade do |t|
    t.boolean "responsibility"
    t.text "responsibility_proportion"
    t.text "limit_of_temporary_worker"
    t.integer "c_main_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "c_times", force: :cascade do |t|
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

  create_table "c_welfares", force: :cascade do |t|
    t.string "uniform"
    t.string "shoes"
    t.string "dining_room"
    t.string "changing_room"
    t.integer "c_main_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "name_kana"
    t.string "who_is_this"
    t.string "address"
    t.string "tel"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contract_employees", force: :cascade do |t|
    t.integer "c_main_info_id"
    t.integer "employee_info_id"
    t.integer "per_hour"
    t.integer "out_of_hour"
    t.integer "night"
    t.integer "off_work"
    t.integer "on_legal_holiday"
    t.integer "out_of_hour_rate"
    t.integer "night_rate"
    t.integer "off_work_rate"
    t.integer "on_legal_holiday_rate"
    t.integer "commuting_allowance"
    t.string "pay_day"
    t.text "health_not_sub"
    t.text "em_health_not_sub"
    t.text "em_not_sub"
    t.date "start_job_day"
    t.date "syaty_job"
    t.date "certificate"
    t.date "finish_day"
    t.string "emp_style"
    t.string "update_check"
    t.date "education"
    t.float "edu_time"
    t.string "edu_detail"
    t.date "education_b"
    t.float "edu_time_b"
    t.string "edu_detail_b"
    t.float "edu_time_c"
    t.string "edu_safety"
    t.string "esm"
    t.date "esm_date"
    t.string "esm_way"
    t.date "answer_date"
    t.text "answer"
    t.string "referral_destination"
    t.string "other_measure"
    t.text "other_detail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "educations", force: :cascade do |t|
    t.integer "edu_year"
    t.integer "edu_month"
    t.string "edu_day"
    t.integer "status"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_infos", force: :cascade do |t|
    t.text "select_title"
    t.integer "employee_id"
    t.integer "employee_last_id"
    t.string "first_name"
    t.string "last_name"
    t.string "first_name_kana"
    t.string "last_name_kana"
    t.integer "sex"
    t.date "birth"
    t.integer "age"
    t.string "postal_code"
    t.string "address"
    t.string "tel_first"
    t.string "tel_second"
    t.string "email_first"
    t.string "email_last"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employment_periods", force: :cascade do |t|
    t.date "start"
    t.date "finish"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "families", force: :cascade do |t|
    t.integer "family_number"
    t.boolean "spouse"
    t.boolean "obligation"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "labor_management_agreements", force: :cascade do |t|
    t.boolean "agreement_check"
    t.date "labor_start"
    t.date "labor_fin"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "labor_standards_acts", force: :cascade do |t|
    t.integer "max_work_day"
    t.integer "max_work_month"
    t.integer "max_work_year"
    t.integer "holiday_work_time"
    t.text "detail"
    t.integer "max_work_day_special"
    t.integer "max_work_month_special"
    t.integer "max_work_year_special"
    t.integer "extension_time"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qualifications", force: :cascade do |t|
    t.integer "year"
    t.integer "month"
    t.string "name"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "residence_cards", force: :cascade do |t|
    t.boolean "copy"
    t.string "resi_id"
    t.string "citizenship"
    t.boolean "residence"
    t.date "limit"
    t.string "update_check"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "social_insurances", force: :cascade do |t|
    t.string "employment_insurance_number"
    t.date "employment_insurance_start"
    t.date "employment_insurance_fin"
    t.string "insurance_number"
    t.date "insurance_start"
    t.date "insurance_fin"
    t.string "insurance_others"
    t.text "details"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_cards", force: :cascade do |t|
    t.string "school_name"
    t.string "student_id"
    t.boolean "student_card_copy"
    t.date "student_limit"
    t.string "student_last"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_checks", force: :cascade do |t|
    t.boolean "all"
    t.boolean "night"
    t.boolean "remote"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_experiences", force: :cascade do |t|
    t.integer "work_year"
    t.integer "work_month"
    t.string "work_name"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_infos", force: :cascade do |t|
    t.integer "work_style"
    t.integer "start_day"
    t.integer "transfer_day"
    t.string "work_department"
    t.string "work_type"
    t.integer "tax"
    t.integer "employee_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
