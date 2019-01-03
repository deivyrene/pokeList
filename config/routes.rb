Rails.application.routes.draw do
  get 'pokemons/index'
  get 'pokemons/show/:id', to: 'pokemons#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
