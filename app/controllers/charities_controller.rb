class CharitiesController < ApplicationController
	def new
		@cod = Cod.find(params[:cod_id])
		@charity = Charity.new
	end

	def create
		name = params[:charity][:name]
        description = params[:charity][:description]
        cod_id = params[:cod_id]
		country_id = params[:country_id]
        new_charity = current_user.charities.create(name: name, description: description, cod_id: cod_id, country_id: country_id)
        if !new_charity.valid?
            flash[:error] = new_charity.errors.full_messages.to_sentence
            redirect_to :back
        else
            redirect_to "/users/" + current_user.id.to_s
        end
	end

	def index
    	@charities = Charity.all
  	end

	def show
		@charity = Charity.find(params[:id])
	end
end
