class CreateBankAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts do |t|
		# 銀行名	
		t.string :bank_name
		#銀行	
		t.string :bank_name_other
		#支店名	
		t.string :branch_name
		# 営業所	
		t.string :sales_office

		# ゆうちょ銀行（店名）	
		t.string :yucho_bank
		# 普通/当座	
		t.integer :bank_type
		# 口座番号	
		t.string :account_number
		t.integer :employee_info_id
      t.timestamps
    end
  end
end
