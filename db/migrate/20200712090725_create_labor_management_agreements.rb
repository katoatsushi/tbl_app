class CreateLaborManagementAgreements < ActiveRecord::Migration[6.0]
  def change
    create_table :labor_management_agreements do |t|
		#協定対象派遣労働者であるか否か	
		t.boolean :agreement_check
		#労使協定有効期限開始	
		t.date :labor_start
		#労使協定有効期限終了	
		t.date :labor_fin
		t.integer :employee_info_id		
      t.timestamps
    end
  end
end
