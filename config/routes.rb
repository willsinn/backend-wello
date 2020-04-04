Rails.application.routes.draw do

  get '/user/:id', to: 'users#show'
  post '/user/new', to: 'user#create'
  get '/user/:id/boards', to: 'boards#index'
  post '/user/:id/boards/new', to: 'boards#create'
  get 'user/:id/board/:id', to: 'boards#show'
  put '/user/:id/board/:id/update', to: 'boards#update'
  post '/user/:id/board/:id/delete', to: 'boards#destroy'

  get '/card/:id', to: 'cards#show'
  post '/board/:id/cards/new', to: 'cards#create'
  post '/cards/delete/:id', to: 'cards#destroy'
  get '/board/:id/cards', to: 'cards#index'
  put '/card/update/:id', to: 'cards#update'


  post '/card/:id/tasks/new', to: 'tasks#create'
  post '/tasks/delete/:id', to: 'tasks#destroy'
  put '/task/update/:id', to: 'tasks#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
