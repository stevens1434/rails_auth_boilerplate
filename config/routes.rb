Rails.application.routes.draw do
  # get 'pets/index'
  #
  # get 'pets/create'
  #
  # get 'pets/edit'
  #
  # get 'pets/update'
  #
  # get 'pets/new'
  #
  # get 'pets/destroy'
  #
  # get 'pets/show'

  root 'main#index'

  get 'login' => 'sessions#new'         #changed this from just: " get 'sessions/new' "
  get 'Login' => 'sessions#new'

  post 'login' => 'sessions#create'     #changed this from just: " get 'sessions/create' "
  post 'Login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy' #changed this from just: " get 'sessions/destroy' "

  resources :user

  resources :pets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
