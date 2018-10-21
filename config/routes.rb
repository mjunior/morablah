Rails.application.routes.draw do
  resources :people

  get '/me', to: 'people#me'
  get '/items', to: 'items#index'
  get '/search', to: 'search#index'
  get '/preferences', to: 'ads#preferences'
  get '/group/:group_id', to: 'ads#show_group'
  resources :ads do
    post 'group', to: 'ads#create_group' 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
