class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all()
  end

  def show
    @pokemon = Pokemon.detail(params[:id])
  end
end
