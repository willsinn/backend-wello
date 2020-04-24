Rails.application.routes.draw do



  get '/user/:id', to: 'users#show'
  post '/user/new', to: 'user#create'

  get '/user/:id/boards', to: 'boards#index'
  post '/user/:id/boards/new', to: 'boards#create'
  get 'user/:id/board/:id', to: 'boards#show'
  put '/board/:id/update', to: 'boards#update'
  # post '/user/:id/board/:id/delete', to: 'boards#destroy'

  get '/card/:id', to: 'cards#show'
  post '/board/:id/cards/new', to: 'cards#create'
  # post '/cards/delete/:id', to: 'cards#destroy'
  get '/board/:id/cards', to: 'cards#index'
  put '/card/update/:id', to: 'cards#update'


  post '/card/:id/tasks/new', to: 'tasks#create'
  # post '/tasks/delete/:id', to: 'tasks#destroy'
  put '/task/update/:id', to: 'tasks#update'

  get'/task/:id/task_checklists', to: "task_checklists#index"
  post '/task/:id/task_checklists/new', to: 'task_checklists#create' 
  get '/task_checklists/:id', to: 'task_checklists#show'
  put '/task_checklists/:id/update', to: 'task_checklists#update'
  post '/task_checklists/:id/destroy', to: 'task_checklists#destroy'

 
  get 'labels/index'
  get 'labels/show'
  get 'labels/create'
  get 'labels/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
