class CodsController < ApplicationController
  def index
    @cods = Cod.all
    @countries = Country.all
  end

  def show
    @cods = Cod.all
    @cod = Cod.find(params[:id])
    @countries = Country.all
  end
end
