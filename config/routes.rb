Rails.application.routes.draw do
  resources :portfolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  root "blogs#index"
  resources :blogs do
    member do
      get :toggle_status  
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
