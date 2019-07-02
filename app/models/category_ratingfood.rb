class CategoryRatingfood < ApplicationRecord
  has_many :reviews
  has_many :reviewusers
end
