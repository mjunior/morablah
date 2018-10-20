Rails.application.routes.draw do
  get 'search/index'
  resources :people
  get '/me', to: 'people#me'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
