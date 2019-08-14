Rails.application.routes.draw do

  get '/user/:id', to: 'users#show'

  get 'user/:id/projects', to: 'projects#index'
  post 'user/:id/projects/new', to: 'projects#create'
  get '/user/:id/projects/:id', to: 'projects#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
