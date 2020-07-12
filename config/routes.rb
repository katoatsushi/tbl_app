Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root 'c_main_infos#index'

    resources :c_main_infos, only: [:new, :create, :edit, :update]
	
	resources :c_main_infos, only: [:show] do
		resources :c_details, only: [:new, :create, :show]
		resources :c_times, only: [:new, :create, :show]
		resources :c_others, only: [:new, :create, :show]
		resources :c_welfares, only: [:new, :create, :show]	
		resources :c_origins, only: [:new, :create, :show]		
	end

end
