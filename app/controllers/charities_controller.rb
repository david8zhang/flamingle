class CharitiesController < ApplicationController
  def new
    @country = Country.find(params[:country_id])
    @cod = Cod.find(params[:cod_id])
    @charity = Charity.new
  end

  def create
    name = params[:charity][:name]
        description = params[:charity][:description]
        cod_id = params[:charity][:cod_id]
    country_id = params[:charity][:country_id]
        new_charity = current_user.charities.create(name: name, description: description, cod_id: cod_id, country_id: country_id)
        if !new_charity.valid?
            flash[:error] = new_charity.errors.full_messages.to_sentence
            redirect_to :back
        else
            redirect_to "/charities/" + new_charity.id.to_s
        end
  end

  def index
    @charities = Charity.all
  end

  def show
    @donation = Donation.new
    @charity = Charity.find(params[:id])
    @donations = @charity.donations.order(:created_at)
    puts @donations
    @total_donations = 0
    @charity.donations.each do |d|
    	@total_donations = @total_donations + d.amount
    end
    @cod = Cod.find(@charity.cod_id)
  end
end
