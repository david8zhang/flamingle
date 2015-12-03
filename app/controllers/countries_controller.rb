class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def show
    @country = params[:cod_id, :country_id]
  end
end
