class PokemonsController < ApplicationController
	def capture
		captured_pokemon = Pokemon.find(params[:id])
		captured_pokemon.update(trainer: current_trainer)
		redirect_to :controller => 'home', :action => 'index'
	end
	def damage
		damaged_pokemon = Pokemon.find(params[:id])	
		damaged_pokemon.update(health: damaged_pokemon.health - 10)
		if damaged_pokemon.health <= 0
            damaged_pokemon.destroy
        end
		redirect_to :controller => 'trainers', :action => 'show', id: damaged_pokemon.trainer.id
	end

end
