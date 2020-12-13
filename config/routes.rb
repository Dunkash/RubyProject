Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  get "session/:id" => "home#session"


  post "graph/:name" => "graph#create"
  patch "graph/:name"=> "graph#change"
  delete "graph/:id" => "graph#remove"


  post "line/:x:y" => "line#create"
  patch "line/:id:x:y" => "line#change"
  delete "line/:id" => "line#remove"

end
