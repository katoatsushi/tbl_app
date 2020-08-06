class CreateCOrigins < ActiveRecord::Migration[6.0]
  def change
    create_table :c_origins do |t|
      # 派遣元情報
      t.string :origin
      t.string :origin_company
      t.string :origin_postal_code
      t.string :origin_place
      t.string :origin_president
      t.string :worker_dispatch_permit_number

      t.string :manu_ope_to_department
      t.string :manu_ope_to_position
      t.string :manu_ope_to_name
      t.string :manu_ope_to_tel
      t.string :complaint_department_from
      t.string :complaint_position_from
      t.string :complaint_name_from
      t.string :complaint_tel_from
                  
      t.integer :c_main_info_id
      t.timestamps
    end
  end
end
