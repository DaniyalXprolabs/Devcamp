Rails.application.routes.draw do
  devise_for :users, path:'',path_names: {sign_in: 'login',sign_out: 'logout',sign_up: 'register'}
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
  get 'angular-items', to: 'portfolios#angularitems'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
