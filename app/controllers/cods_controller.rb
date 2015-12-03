class CodsController < ApplicationController
  def index
    @cods = Cod.all
  end

  def show
    @cod = Cod.find(params[:id])
    @countries = Country.all
  end
end
