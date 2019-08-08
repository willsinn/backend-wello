Rails.application.routes.draw do
  get '/user/:id', to: 'users#show'
  post '/user/:id/projects/new', to: 'projects#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
