OPR::Application.routes.draw do
  root to: 'static#home'

  resources :users
  resources :interviews
  resources :visiting_lists
  resources :advertisements

  get '/:page' => 'static#show'
end
