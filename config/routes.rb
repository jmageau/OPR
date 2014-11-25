OPR::Application.routes.draw do
  resources :financial_institutions


  resources :visitations


  resources :leases


  root to: 'static#home'

  resources :users
  resources :interviews
  resources :visiting_lists
  resources :advertisements
  resources :subsidiary_agencies

  get '/:page' => 'static#show'
end
