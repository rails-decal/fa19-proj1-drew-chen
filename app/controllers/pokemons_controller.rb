class PokemonsController < ApplicationController
	def capture
		Pokemon.find(params[:id]).update(trainer: current_trainer)
		redirect_to :controller => 'home', :action => 'index'
	end
end
