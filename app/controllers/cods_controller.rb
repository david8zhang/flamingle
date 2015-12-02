class CodsController < ApplicationController
	def index
		@cods = Cod.all
	end
end
