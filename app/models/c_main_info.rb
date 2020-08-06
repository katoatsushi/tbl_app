class CMainInfo < ApplicationRecord
	has_one :c_detail
	has_one :c_limit
	has_one :c_time
	has_one :c_other
	has_one :c_welfare
	has_one :c_origin
	has_many :contract_employee
end
