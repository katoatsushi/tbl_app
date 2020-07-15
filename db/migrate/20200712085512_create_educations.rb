class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
		#学歴年	
		t.integer :edu_year
		#学歴月	
		t.integer :edu_month
		#学校名	
		t.string :edu_day
		#在学中/卒業	
		t.integer :status
		t.integer :employee_info_id		
      t.timestamps
    end
  end
end
