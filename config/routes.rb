Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :jobs
  resources :bikes
  resources :users

  devise_scope :user do 
  	get 'valet/sign_up' => 'registrations#valet_new'
  end
  

  root "jobs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
