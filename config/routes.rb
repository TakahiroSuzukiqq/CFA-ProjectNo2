Rails.application.routes.draw do
  resources :messages
  resources :charges
  resources :suppliers
  resources :posts do
    resources :comments
  end
  devise_for :users
  get 'admin/index' to: 'admin#index'
  root 'pages#index'
  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
