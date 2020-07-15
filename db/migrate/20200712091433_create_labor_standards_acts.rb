class CreateLaborStandardsActs < ActiveRecord::Migration[6.0]
  def change
    create_table :labor_standards_acts do |t|
		#一日の時間外労働最大	
		t.integer :max_work_day
		#一月の時間外労働最大	
		t.integer :max_work_month
		#一年の時間外労働最大	
		t.integer :max_work_year
		#休日出勤の回数	
		t.integer :holiday_work_time
		#特別条項	
		t.text :detail
		#一日の時間外労働最大(特)	
		t.integer :max_work_day_special
		#一月の時間外労働最大(特)	
		t.integer :max_work_month_special
		#一年の時間外労働最大(特)	
		t.integer :max_work_year_special
		#延長回数	
		t.integer :extension_time
		t.integer :employee_info_id		
      t.timestamps
    end
  end
end
