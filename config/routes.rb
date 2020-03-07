Rails.application.routes.draw do

  get '/user/:id', to: 'users#show'
  post '/user/new', to: 'user#create'
  get '/user/:id/boards', to: 'boards#index'
  post '/user/:id/boards/new', to: 'boards#create'
  get 'user/:id/board/:id', to: 'boards#show'
  post '/board/delete/:id',to: 'boards#destroy'

  post '/board/:id/items/new', to: 'items#create'
  post '/items/delete/:id',to: 'items#destroy'
  get '/item/:id', to: 'items#show'
  get '/board/:id/items', to: 'items#index'
  put '/item/update/:id', to: 'items#update'

  post '/item/:id/cards/new', to: 'cards#create'
  post '/cards/delete/:id', to: 'cards#destroy'
  put '/card/update/:id', to: 'cards#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
