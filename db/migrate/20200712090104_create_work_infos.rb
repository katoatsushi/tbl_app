class CreateWorkInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :work_infos do |t|
	# 入社区分	
	t.integer :work_style
	#入社日	
	t.integer :start_day
	#変更日	
	t.integer :transfer_day
	#配属先	
	t.string :work_department
	#業務の種類	
	t.string :work_type
	#税収区分	
	t.integer :tax
	t.integer :employee_info_id	
      t.timestamps
    end
  end
end
