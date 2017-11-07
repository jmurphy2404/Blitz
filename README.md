# README

## Startup Commands
```
rails new agencyweek
cd agencyweek
rails g scaffold User fullname:string address:string phone_num:string user_type:integer
rails g scaffold Bike make:string model:string color:string image:string user:references
rails g scaffold Job origin_lat:float origin_lng:float dest_lat:float dest_lng:float origin:string destination:string date:datetime time:datetime bike_id:integer valet_id:integer status:integer
bundle install
rails g devise:install
rails g devise User
rails g devise:views
rails g uploader Image

```

## Routes
```
                  Prefix Verb   URI Pattern                    Controller#Action
        new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
            user_session POST   /users/sign_in(.:format)       devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
           user_password PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
                         POST   /users/password(.:format)      devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
  edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
       user_registration PATCH  /users(.:format)               devise/registrations#update
                         PUT    /users(.:format)               devise/registrations#update
                         DELETE /users(.:format)               devise/registrations#destroy
                         POST   /users(.:format)               devise/registrations#create
                    jobs GET    /jobs(.:format)                jobs#index
                         POST   /jobs(.:format)                jobs#create
                 new_job GET    /jobs/new(.:format)            jobs#new
                edit_job GET    /jobs/:id/edit(.:format)       jobs#edit
                     job GET    /jobs/:id(.:format)            jobs#show
                         PATCH  /jobs/:id(.:format)            jobs#update
                         PUT    /jobs/:id(.:format)            jobs#update
                         DELETE /jobs/:id(.:format)            jobs#destroy
                   bikes GET    /bikes(.:format)               bikes#index
                         POST   /bikes(.:format)               bikes#create
                new_bike GET    /bikes/new(.:format)           bikes#new
               edit_bike GET    /bikes/:id/edit(.:format)      bikes#edit
                    bike GET    /bikes/:id(.:format)           bikes#show
                         PATCH  /bikes/:id(.:format)           bikes#update
                         PUT    /bikes/:id(.:format)           bikes#update
                         DELETE /bikes/:id(.:format)           bikes#destroy
                   users GET    /users(.:format)               users#index
                         POST   /users(.:format)               users#create
                new_user GET    /users/new(.:format)           users#new
               edit_user GET    /users/:id/edit(.:format)      users#edit
                    user GET    /users/:id(.:format)           users#show
                         PATCH  /users/:id(.:format)           users#update
                         PUT    /users/:id(.:format)           users#update
                         DELETE /users/:id(.:format)           users#destroy
```
## API Key
```
Google Maps Javascript API key = AIzaSyCPJJsoaUUfc25r2O8ZSHIv5pFRHPHgaIc

#Javascript Maps API
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCPJJsoaUUfc25r2O8ZSHIv5pFRHPHgaIc&callback=initMap" type="text/javascript"></script>

#Places Library
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCPJJsoaUUfc25r2O8ZSHIv5pFRHPHgaIc&libraries=places"></script>
```