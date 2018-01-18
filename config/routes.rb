Rails.application.routes.draw do
 

get 'home/index'
# resources :user
  resources :tasks
resources :team_lead
resources :department
  #get 'team_lead/show'
   
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/tasks' => "tasks#create"
  root 'home#index'
  post '/department/change_time'
  get '/email' => "home#send_email"
  get '/insert_checkbox' => 'tasks#set_checkbox'
  post '/department/:id' => "department#change_time"
end



 