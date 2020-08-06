class CreateCTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :c_times do |t|
        # 就業日・時間
    	t.string :work_start_day
    	t.boolean :out_of_work
    	t.string :start_date
    	t.integer :work_total_time
    	t.integer :per_min
    	t.boolean :work_type_bool
    	t.string :work_change
    	# シフトA名称
    	t.string :work_range_a
    	t.string :regular_work_range_a
    	t.string :break_time_a
    	t.string :total_break_time_a
    	# シフトB名称
    	t.string :work_range_b
    	t.string :regular_work_range_b
    	t.string :break_time_b
    	t.string :total_break_time_b
    	# シフトC名称
    	t.string :work_range_c
    	t.string :regular_work_range_c
    	t.string :break_time_c
    	t.string :total_break_time_c
    	# シフトD名称
    	t.string :work_range_d
    	t.string :regular_work_range_d
    	t.string :break_time_d
    	t.string :total_break_time_d
    	# シフトE名称
    	t.string :work_range_e
    	t.string :regular_work_range_e
    	t.string :break_time_e
    	t.string :total_break_time_e
    	# 請求単価
    	t.string :overtime_unit_price
    	t.string :legal_holiday_unit_price
    	t.string :midnight_premium_unit_price
    	t.string :deadine
    	t.string :date_of_payment
    	t.string :rounding
        
        t.integer :c_main_info_id
      t.timestamps
    end
  end
end
