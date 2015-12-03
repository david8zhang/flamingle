class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def show
      @charities = Charity.where(:cod_id => params[:cod_id], :country_id => params[:country_id])
  end
end
