class EmployeeInfo < ApplicationRecord
	has_one :employment_period
	has_one :family
	has_one :labor_management_agreement
	has_one :labor_standards_act
	has_many :qualifications
	has_one :residence_card
	has_one :social_insurance
	has_one :student_card
	has_one :student_check
	has_one :work_experience
	has_one :work_info
	has_one :bank_account
	has_one :contact
	has_one :education
	has_many :contract_employee
end
