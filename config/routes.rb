Rails.application.routes.draw do
 

get 'home/index'
  resources :tasks
resources :team_lead
  #get 'team_lead/show'
   
  devise_for :users, controllers: {
        # sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/tasks' => "tasks#create"
  root 'home#index'

  get '/email' => "home#send_email"
  get '/insert_checkbox' => 'tasks#set_checkbox'
end



 