class CharitiesController < ApplicationController
	def new
		@charity = Charity.new
	end

	def create
		@charity = Charity.new(charity_params)
	end

	def charity_params
		params.require(:charity).permit(:name)
	end

	def index
    	@charity = Charity.all
  	end
end

