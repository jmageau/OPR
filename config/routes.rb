OPR::Application.routes.draw do
  root to: 'static#home'

  resources :users
  resources :interviews

  get '/:page' => 'static#show'
end
