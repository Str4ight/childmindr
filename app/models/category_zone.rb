class CategoryZone < ApplicationRecord
  has_many :schools
  has_many :category_towns
  has_many :users
end
