class CategoryRegion < ApplicationRecord
  has_many :schools
  has_many :category_town
  has_many :users
end
