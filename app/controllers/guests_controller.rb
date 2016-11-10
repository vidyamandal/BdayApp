class GuestsController < ApplicationController

	def new

	end

	def create
		#render plain: params[:guest].inspect
		@guest = Guest.new(guest_params)
		@guest.save
	end
	
	def index
		@guests = Guest.all
	end
	
	def show
		@guest = Guest.find(params[:id])
	end
	
	private 
		def guest_params	
			params.require(:guest).permit(:name, :email, :attend, :adult, :child)
		end

end

