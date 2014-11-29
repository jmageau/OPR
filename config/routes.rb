OPR::Application.routes.draw do
  root to: 'static#home'

  resources :users
  resources :user_sessions
  get 'login' => 'user_sessions#new', as: :login
  post 'logout' => 'user_sessions#destroy', as: :logout

  resources :interviews
  resources :visiting_lists
  get '/visiting_lists/:id/remove_from_visiting_list/:property' => "visiting_lists#remove_from_visiting_list", as: :remove_from_visiting_list

  resources :advertisements
  resources :subsidiary_agencies
  resources :financial_institutions
  resources :visitations
  resources :leases
  resources :pictures
  resources :properties do
      get 'index_by_owner', on: :collection
      get 'owner_add_property', on: :collection
      get 'mark_as_deleted', on: :member
      get 'add_to_visiting_list', on: :member
      get 'search', on: :collection
  end

  get '/:page' => 'static#show'
end
