class DonationsController < ApplicationController
  def create
  @charity = Charity.find(params[:id])
  @donation = @charity.donations.build(donation_params)
  @donation.save
  end

  def destroy
  end

  private

    # TODO (Shimmy): Add picture support
  def donation_params
    params.require(:donation).permit(:amount, :user_id, :charity_id).merge(user_id: current_user.id)
  end

  # TODO (Shimmy): Use CanCanCan instead.
  def correct_user
    @donation = current_user.donation.find_by(id: params[:id])
    redirect_to root_url if @donation.nil?
  end
end
