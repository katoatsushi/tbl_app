class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|

		#氏名	
		t.string :name
		#フリガナ	
		t.string :name_kana
		#続柄	
		t.string :who_is_this

		#住　所	
		t.string :address
		#緊急連絡先	
		t.string :tel
		t.integer :employee_info_id
      t.timestamps
    end
  end
end
