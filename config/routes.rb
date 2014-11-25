OPR::Application.routes.draw do
  resources :interviews


  root to: 'static#home'

  get '/:page' => 'static#show'
end
