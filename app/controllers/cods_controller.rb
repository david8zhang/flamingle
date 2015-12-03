class CodsController < ApplicationController
  def index
    @cods = Cod.all
    @countries = Country.all
  end

  def show
    @cods = Cod.all
    @cod = Cod.find(params[:id])
    @countries = Country.all
    gon.countrynames = [['Country', 'Deathtolls']]
    gon.links = []
     @countries.each do |country|
       gon.countrynames << [country.name,
         country.country_cods.where(cod_id = @cod.id).first.deathtoll]
       gon.links << country_path([cod_id: @cod.id, country_id: country.id])

    end
  end
end
