class CreateCLimits < ActiveRecord::Migration[6.0]
  def change
    create_table :c_limits do |t|
		# 労働者派遣の期間制限に抵触する日
		# 抵触日単位	
		t.string :conflict_days
		# 事業所単位抵触日	
		t.date :business_unit_unit_conflict_day
		# 組織単位の抵触日組織単位（課）の配属日から3年
		t.date :three_years_later
		t.integer :c_main_info_id
      t.timestamps
    end
  end
end
