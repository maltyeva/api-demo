Rails.application.routes.draw do
  resources :shops
  post 'shops/liked', to: "shops#liked"
  post 'shops/disliked', to: "shops#disliked"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
