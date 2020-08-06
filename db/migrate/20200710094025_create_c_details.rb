class CreateCDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :c_details do |t|
    	# 個別契約内容
      t.integer :treatment_decision_method
      t.string :name
      t.string :place
      t.string :tel
      t.string :factory_name
      t.string :factory_place
      t.string :factory_tel
      t.string :factory_department
      t.string :factory_department_tel
      t.integer :party_num
      t.integer :party_position
      t.string :command_and_order_department
	  t.string :command_and_order_position
	  t.string :command_and_order_name
	  t.string :command_and_order_tel
	  t.string :manu_ope_from_department
	  t.string :manu_ope_from_position
	  t.string :manu_ope_from_name
	  t.string :manu_ope_from_tel
	  t.string :complaint_department_to
	  t.string :complaint_position_to
	  t.string :complaint_name_to
	  t.string :complaint_tel_to
	  t.string :customer_postal_code	  
	  t.string :customer_place  	  	  	  
	  t.string :customer_position
	  t.string :customer_name  	  	  	  
	  t.text :work_detail  
	  t.integer :c_main_info_id
      t.timestamps
    end
  end
end
