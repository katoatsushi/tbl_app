class CreateFamilies < ActiveRecord::Migration[6.0]
  def change
    create_table :families do |t|
		#扶養人数	
		t.integer :family_number
		#配偶者(有・無)	
		t.boolean :spouse
		#配偶者の扶養義務(有・無)	
		t.boolean :obligation
		t.integer :employee_info_id		
      t.timestamps
    end
  end
end
