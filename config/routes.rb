Rails.application.routes.draw do
  resources :recipes
  resources :week_blocks
  
  resources :users do
    get 'plan_preferences', to: 'day_block_prefs#index', as: :plan_prefs
  end
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
