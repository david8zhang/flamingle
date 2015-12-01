class Country < ActiveRecord::Base
  has_many :cods, through: :country_cods
end
