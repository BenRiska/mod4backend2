Rails.application.routes.draw do
  post "/transactions", to: 'transactions#sent'
  resources :transactions
  resources :currencies
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
