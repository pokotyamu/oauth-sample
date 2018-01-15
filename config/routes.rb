Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'

  get '/auth/:provider/callback' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
