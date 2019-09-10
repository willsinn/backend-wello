Rails.application.routes.draw do

  get '/user/:id', to: 'users#show'
  post '/user/new', to: 'user#create'
  get '/user/:id/projects', to: 'projects#index'
  post '/user/:id/projects/new', to: 'projects#create'
  get '/user/:id/project/:id', to: 'projects#show'
  post '/project/delete/:id',to: 'projects#destroy'

  post '/project/:id/items/new', to: 'items#create'
  post '/items/delete/:id',to: 'items#destroy'
  get '/item/:id', to: 'items#show'
  get '/project/:id/items', to: 'items#index'
  put '/item/update/:id', to: 'items#update'

  post '/item/:id/cards/new', to: 'cards#create'
  post '/cards/delete/:id', to: 'cards#destroy'
  put '/card/update/:id', to: 'cards#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
