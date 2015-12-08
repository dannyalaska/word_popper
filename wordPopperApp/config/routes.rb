Rails.application.routes.draw do
  resources :lines
  resources :users
  root "sessions#new"
  get    'about'   => 'static_pages#about'
  get    'contact' => 'static_pages#contact'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get     'myprofile' => 'users#show'
end
