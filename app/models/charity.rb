class Charity < ActiveRecord::Base
  belongs_to :cod
  has_many :users, through: :user_charities do
    def leaders
      where("user_charities.is_leader = ?", true)
    end
  end
  has_many :donations
  validates_uniqueness_of :name, :message => '%{value} already exists as a charity!'
end
