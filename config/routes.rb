Rails.application.routes.draw do
  devise_for :pages
  get 'admin/index'
  resources :charges
  resources :suppliers
  resources :posts do
    resources :comments
  end
  devise_for :users
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
