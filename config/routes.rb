OPR::Application.routes.draw do
  resources :leases


  root to: 'static#home'

  resources :users
  resources :interviews
  resources :visiting_lists
  resources :advertisements
  resources :subsidiary_agencies

  get '/:page' => 'static#show'
end
