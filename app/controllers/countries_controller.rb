class CountriesController < ApplicationController
  def index
      @countries = Country.all
  end

  # Show a list of charities for the country with the given cod
  def show
      parameters = params[:id]
      new_params = CGI.parse(parameters)
      country_id = new_params["country_id"][0].to_i
      cod_id = new_params["cod_id"][0].to_i
      @country = Country.find(country_id)
      @cod = Cod.find(cod_id)
      @charities = Charity.where(:cod_id => cod_id, :country_id => country_id)
  end
end
