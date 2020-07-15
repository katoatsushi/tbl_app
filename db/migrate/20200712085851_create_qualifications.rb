class CreateQualifications < ActiveRecord::Migration[6.0]
  def change
    create_table :qualifications do |t|
		# 取得年	
		t.integer :year
		# 取得月	
		t.integer :month
		# 取得資格	
		t.string :name
		t.integer :employee_info_id		
      t.timestamps
    end
  end
end
