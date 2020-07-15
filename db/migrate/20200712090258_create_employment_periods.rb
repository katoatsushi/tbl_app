class CreateEmploymentPeriods < ActiveRecord::Migration[6.0]
  def change
    create_table :employment_periods do |t|
		#開始	
		t.date :start
		#終了	
		t.date :finish
		t.integer :employee_info_id		
      t.timestamps
    end
  end
end
