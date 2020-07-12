class CreateCOthers < ActiveRecord::Migration[6.0]
  def change
    create_table :c_others do |t|
    	t.boolean :responsibility
    	t.text :responsibility_proportion
    	t.text :limit_of_temporary_worker
    	
    	t.integer :c_main_info_id
      t.timestamps
    end
  end
end
