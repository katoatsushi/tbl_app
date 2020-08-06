class CreateContractEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :contract_employees do |t|

		# 従業員コードNo
		t.integer :c_main_info_id
		# 個別契約管理番号
		t.integer :employee_info_id
		# 支払単価
		t.integer :per_hour
		# 残業時給
		t.integer :out_of_hour
		# 深夜割増時給
		t.integer :night
		# 法定外休労働時給
		t.integer :off_work
		# 法定休日労働時給
		t.integer :on_legal_holiday
		# 時間外割増率
		t.integer :out_of_hour_rate
		# 深夜割増率
		t.integer :night_rate
		# 休日割増率
		t.integer :off_work_rate
		# 法定休日割増率
		t.integer :on_legal_holiday_rate
		#  通勤手当/日 
		t.integer :commuting_allowance
		# 給料日
		t.string :pay_day

		# 健康保険未加入理由
		t.text :health_not_sub
		# 厚生年金保険未加入理由
		t.text :em_health_not_sub
		# 雇用保険未加入理由
		t.text :em_not_sub

		# 入職（予定）日
		t.date :start_job_day
		# 雇入通知書兼就業条件明示書の雇用期間欄開始日
		t.date :syaty_job
		# 明示書発行日
		t.date :certificate
		# 雇入通知書兼就業条件明示書の雇用期間欄終了日
		t.date :finish_day
		# 雇用形態
		t.string :emp_style
		# 更新（有無）
		t.string :update_check
		# 入社前教育日付
		t.date :education
		# 時間
		t.float :edu_time
		# 入社前教育
		t.string :edu_detail
		# 入社時教育日付
		t.date :education_b
		# 時間
		t.float :edu_time_b
		# 入社時教育
		t.string :edu_detail_b
		# 時間
		t.float :edu_time_c
		# 入社時安全教育
		t.string :edu_safety

		#  雇用安定措置の内容
		t.string :esm
		# 依頼日時
		t.date :esm_date
		# 依頼方法
		t.string :esm_way
		# 回答日時
		t.date :answer_date
		# 回答
		t.text :answer
		# 紹介派遣先
		t.string :referral_destination
		# その他の措置
		t.string :other_measure
		# 備考（配属日、異動日、終了日などの特記事項を記入）
		t.text :other_detail

      t.timestamps
    end
  end
end
