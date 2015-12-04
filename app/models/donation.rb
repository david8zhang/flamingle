class Donation < ActiveRecord::Base
  belongs_to :charity
  belongs_to :user
  validates :amount, :numericality => { :greater_than => 0, :message => "Must donate something!"}, :presence => true
end
