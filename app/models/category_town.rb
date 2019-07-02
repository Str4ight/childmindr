class CategoryTown < ApplicationRecord
  has_many :schools
  belongs_to :category_zone
  has_many :users
end
