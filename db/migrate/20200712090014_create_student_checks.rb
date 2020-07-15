class CreateStudentChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :student_checks do |t|
		#全日制（○・―）	
		t.boolean :all
		#夜間制（○・―）	
		t.boolean :night
		#通信制（○・―）	
		t.boolean :remote
		t.integer :employee_info_id		
      t.timestamps
    end
  end
end
