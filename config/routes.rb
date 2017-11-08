Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :jobs
  resources :bikes
  resources :users

  get 'valet/sign_up' => 'registrations#valet_new'
  post 'valet' => 'registrations#valet_create'

  root "jobs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
