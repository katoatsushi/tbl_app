class ContractEmployee < ApplicationRecord
	belongs_to :c_main_info
	belongs_to :employee_info
end
