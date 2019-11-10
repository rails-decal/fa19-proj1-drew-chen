Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/pokemons/:id/capture', to: 'pokemons#capture', as: 'capture'
  patch '/pokemons/:id/damage', to: 'pokemons#damage', as: 'damage'
  get '/trainers/:id', to: 'trainers#show'
end
