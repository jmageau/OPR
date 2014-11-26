OPR::Application.routes.draw do
  resources :properties


  root to: 'static#home'

  resources :users
  resources :user_sessions
  get 'login' => 'user_sessions#new', as: :login
  post 'logout' => 'user_sessions#destroy', as: :logout

  resources :interviews
  resources :visiting_lists
  resources :advertisements
  resources :subsidiary_agencies
  resources :financial_institutions
  resources :visitations
  resources :leases

  get '/:page' => 'static#show'
end
