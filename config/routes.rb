Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root 'c_main_infos#top'

    # root 'c_main_infos#index'

    resources :c_main_infos, only: [:new, :create, :edit, :update, :index]
	
	resources :c_main_infos, only: [:show] do
		resources :c_details, only: [:new, :create, :show]
		resources :c_times, only: [:new, :create, :show]
		resources :c_others, only: [:new, :create, :show]
		resources :c_welfares, only: [:new, :create, :show]	
		resources :c_origins, only: [:new, :create, :show]		
	end

    resources :employee_infos, only: [:new, :create, :edit, :update, :show, :index]	

	resources :employee_infos, only: [:show] do
		resources :bank_accounts, only: [:new, :create, :show]
		resources :contacts, only: [:new, :create, :show]
		resources :familys, only: [:new, :create, :show]
		resources :educations, only: [:new, :create, :show]
		resources :work_experiences, only: [:new, :create, :show]
		resources :qualifications, only: [:new, :create, :show]
		resources :student_checks, only: [:new, :create, :show]	
		resources :work_infos, only: [:new, :create, :show]
		resources :employment_periods, only: [:new, :create, :show]	
		resources :residence_cards, only: [:new, :create, :show]
		resources :student_cards, only: [:new, :create, :show]	
		resources :labor_management_agreements, only: [:new, :create, :show]
		resources :labor_standards_acts, only: [:new, :create, :show]				
		resources :social_insurances, only: [:new, :create, :show]					
	end

end
