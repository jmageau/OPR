OPR::Application.routes.draw do
  resources :advertisements


  resources :interviews


  root to: 'static#home'

  get '/:page' => 'static#show'
end
