class CODController < ApplicationController
	def index
		@cods = COD.all
	end
end
