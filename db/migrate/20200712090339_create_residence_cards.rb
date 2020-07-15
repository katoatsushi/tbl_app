class CreateResidenceCards < ActiveRecord::Migration[6.0]
  def change
    create_table :residence_cards do |t|
		#写し（有・無）	
		t.boolean :copy
		#番号№	
		t.string :resi_id
		#国籍	
		t.string :citizenship
		#在留資格	
		t.boolean :residence
		#在留期限	
		t.date :limit
		#更新中確認	
		t.string :update_check
		t.integer :employee_info_id		
      t.timestamps
    end
  end
end
