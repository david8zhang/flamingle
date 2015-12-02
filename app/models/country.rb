class Country < ActiveRecord::Base
  has_many :cods, through: :country_cods
  has_many :country_cods
end
