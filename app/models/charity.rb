class Charity < ActiveRecord::Base
  belongs_to :cod
  has_many :users, through: :user_charities
  has_many :user_charities
  has_many :donations
  validates_uniqueness_of :name, :message => '%{value} already exists as a charity!'
end
