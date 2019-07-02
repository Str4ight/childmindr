class CategoryCountry < ApplicationRecord
  has_many :schools
  has_many :users
end
