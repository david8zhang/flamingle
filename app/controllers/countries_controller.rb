class CountriesController < ApplicationController
  def index
      @countries = Country.all
  end

  # Show a list of charities for the country with the given cod
  def show
      @country = Country.find(params[:country_id])
      @cod = Cod.find(params[:cod_id])
      @charities = Charity.where(:cod_id => params[:cod_id], :country_id => params[:country_id])
      @donations = []
      @charities.each do |c|
          @donations << calc_total_donation(c.donations)
      end
  end

  # Calculate the total donations
  def calc_total_donation(donations)
      total = 0
      donations.each do |donation|
          total = total + donation.amount
      end
      return total
  end
end
