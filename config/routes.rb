Rails.application.routes.draw do



  get 'user/:id/projects', to: 'projects#index'
  post 'user/:id/projects/new', to: 'projects#create'
  get '/user/:id/project/:id', to: 'projects#show'
  post 'project/delete/:id',to: 'projects#destroy'



  post 'project/:id/items/new', to: 'items#create'
  post 'items/:id/delete',to: 'items#destroy'
  get '/item/:id', to: 'items#show'



  post 'item/:id/cards/new', to: 'cards#create'
  post 'cards/:id/delete', to: 'cards#destroy'
  get '/user/:id', to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
