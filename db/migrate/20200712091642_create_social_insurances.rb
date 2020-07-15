class CreateSocialInsurances < ActiveRecord::Migration[6.0]
  def change
    create_table :social_insurances do |t|
		#雇用保険被保険者番号	
		t.string :employment_insurance_number
		#雇用保険加入年月日	
		t.date :employment_insurance_start
		#雇用保険喪失年月日	
		t.date :employment_insurance_fin
		#健康保険・厚生年金保険番号	
		t.string :insurance_number
		#健康保険・厚生年金保険加入年月日	
		t.date :insurance_start
		#健康保険・厚生年金保険喪失年月日	
		t.date :insurance_fin
		#異動歴・退職年月日と事由・死亡年月日と原因	
		t.string :insurance_others
		#備考	
		t.text :details
		t.integer :employee_info_id		
      t.timestamps
    end
  end
end
