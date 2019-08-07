Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/show'
  get 'projects/new'
  get 'projects/create'
  get 'projects/edit'
  get 'projects/update'
  get 'projects/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
