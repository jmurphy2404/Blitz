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
```

## Routes
```
   Prefix Verb   URI Pattern               Controller#Action
     jobs GET    /jobs(.:format)           jobs#index
          POST   /jobs(.:format)           jobs#create
  new_job GET    /jobs/new(.:format)       jobs#new
 edit_job GET    /jobs/:id/edit(.:format)  jobs#edit
      job GET    /jobs/:id(.:format)       jobs#show
          PATCH  /jobs/:id(.:format)       jobs#update
          PUT    /jobs/:id(.:format)       jobs#update
          DELETE /jobs/:id(.:format)       jobs#destroy
    bikes GET    /bikes(.:format)          bikes#index
          POST   /bikes(.:format)          bikes#create
 new_bike GET    /bikes/new(.:format)      bikes#new
edit_bike GET    /bikes/:id/edit(.:format) bikes#edit
     bike GET    /bikes/:id(.:format)      bikes#show
          PATCH  /bikes/:id(.:format)      bikes#update
          PUT    /bikes/:id(.:format)      bikes#update
          DELETE /bikes/:id(.:format)      bikes#destroy
    users GET    /users(.:format)          users#index
          POST   /users(.:format)          users#create
 new_user GET    /users/new(.:format)      users#new
edit_user GET    /users/:id/edit(.:format) users#edit
     user GET    /users/:id(.:format)      users#show
          PATCH  /users/:id(.:format)      users#update
          PUT    /users/:id(.:format)      users#update
          DELETE /users/:id(.:format)      users#destroy
```
