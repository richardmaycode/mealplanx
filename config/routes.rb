Rails.application.routes.draw do
  resources :recipes
  resources :week_blocks
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
