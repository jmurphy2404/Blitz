Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }

  get '/' =>'home#index', as: :root

  resources :jobs
  resources :bikes
  resources :users

  devise_scope :user do 
  	get 'valet/sign_up' => 'registrations#valet_new'
  end

  #put 'job/assign' => 'jobs#assign_valet', as: :assign_valet
  
  put 'job/update_status' => 'jobs#update_status', as: :update_status



  get 'logout' => "home#logout"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
