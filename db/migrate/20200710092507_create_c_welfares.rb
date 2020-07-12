class CreateCWelfares < ActiveRecord::Migration[6.0]
  def change
    create_table :c_welfares do |t|
      t.string :uniform
      t.string :shoes
      t.string :dining_room
      t.string :changing_room
      
      t.integer :c_main_info_id
      t.timestamps
    end
  end
end
