class Cod < ActiveRecord::Base
  has_many :charities
  has_many :countries, through: :country_cods
  validates_uniqueness_of :name
end
