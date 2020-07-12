class CreateCMainInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :c_main_infos do |t|
      t.integer :uuid
      t.integer :dispatch_personnel
      t.integer :year
      t.integer :month
      t.integer :day
      t.date :fin_date
      t.date :contract_start
      t.date :contract_finish
      
      t.timestamps
    end
  end
end
