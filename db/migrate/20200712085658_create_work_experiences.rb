class CreateWorkExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :work_experiences do |t|
		#職歴年	 
		t.integer :work_year
		#職歴月	
		t.integer :work_month
		#就労先名（派遣の場合は派遣元社名を入力の事）	
		t.string :work_name
		t.integer :employee_info_id		
      t.timestamps
    end
  end
end
