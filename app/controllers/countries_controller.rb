class CountriesController < ApplicationController
  def index
      @countries = Country.all
  end

  # Show a list of charities for the country with the given cod
  def show
      @countryid = params[:cod_id, :country_id].country_id
      @codid = params[:cod_id, :country_id].cod_id
    #   @country = Country.find(params[:country_id])
    #   @cod = Cod.find(params[:cod_id])
    #   @charities = Charity.where(:cod_id => params[:cod_id], :country_id => params[:country_id])
  end
end
