# README

## Startup Commands
```
rails new agencyweek
cd agencyweek
rails g scaffold User fullname:string address:string phone_num:integer user_type:integer
rails g scaffold Bike make:string model:string color:string image:string user:references
rails g scaffold Job origin_lat:float origin_lng:float dest_lat:float dest_lng:float origin:string destination:string date:datetime time:datetime bike_id:integer valet_id:integer status:integer
