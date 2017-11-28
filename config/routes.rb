Rails.application.routes.draw do
  get     'login'           => 'sessions#new', as: 'login'
  post    'login'           => 'sessions#create'
  get     'logout'          => 'sessions#destroy', as: 'logout'
  get     'signup'          => 'users#new', as: 'signup'
  post    'signup'          => 'users#create'

  get     'users'           => 'users#index', as: 'users'
  post    'users'           => 'users#create'
  get     'users/new'       => 'users#new',   as: 'new_user'
  get     'users/:id/edit'  => 'users#edit',  as: 'edit_user'
  get     'users/:id'       => 'users#show',  as: 'user'
  patch   'users/:id'       => 'users#update'
  put     'users/:id'       => 'users#update'
  delete  'users/:id'       => 'users#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
