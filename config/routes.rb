OPR::Application.routes.draw do
  resources :subsidiary_agencies


  resources :visiting_lists


  resources :advertisements


  resources :interviews


  root to: 'static#home'

  get '/:page' => 'static#show'
end
