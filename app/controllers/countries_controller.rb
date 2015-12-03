class CountriesController < ApplicationController
  def index
    @countries = Country.all
    @cods = Country.first.cods
  end
end
