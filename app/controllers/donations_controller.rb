class DonationsController < ApplicationController
  def create
  @charity = Charity.find(params[:charity_id])
  puts Country.find(@charity);
  @donation = @charity.donations.build(donation_params)
  flash[:error] = new_charity.errors.full_messages.to_sentence
  @donation.save
  end

  def destroy
  end

  private

  def donation_params
    params.require(:donation).permit(:amount, :user_id, :charity_id).merge(user_id: current_user.id)
  end

  def correct_user
    @donation = current_user.donation.find_by(id: params[:id])
    redirect_to root_url if @donation.nil?
  end
end
