class CreateStudentCards < ActiveRecord::Migration[6.0]
  def change
    create_table :student_cards do |t|
		#在学中の学校	
		t.string :school_name
		#学籍№	
		t.string :student_id
		#学生証写し	
		t.boolean :student_card_copy
		#学生証有効期限	
		t.date :student_limit
		#学生証有効期限残り	
		t.string :student_last
		t.integer :employee_info_id		
      t.timestamps
    end
  end
end
