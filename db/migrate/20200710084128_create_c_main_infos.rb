class CreateCMainInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :c_main_infos do |t|
      # 個別契約基本情報
      t.integer :contract_id
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
