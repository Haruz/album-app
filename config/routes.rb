Rails.application.routes.draw do

#album routes	
  get "/albums", to: "albums#index"
  get 'albums/:id', to: 'albums#show', as: :album_info
#user routes
  get "/users", to: "users#index"
  get 'users/:id', to: 'users#show', as: :user_info

  root to: "albums#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
