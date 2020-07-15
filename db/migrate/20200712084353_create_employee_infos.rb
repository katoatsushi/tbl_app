class CreateEmployeeInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_infos do |t|
    	t.string :employee_id
    	t.string :employee_last_id
    	t.string :first_name
    	t.string :last_name
    	t.string :first_name_kana   	
    	t.string :last_name_kana
    	t.integer :sex
    	t.date :birth
    	t.integer :age
    	t.string :postal_code
    	t.string :address
    	t.string :tel_first
    	t.string :tel_second
    	t.string :email_first
    	t.string :email_last
    	
      t.timestamps
    end
  end
end
