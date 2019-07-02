class Review < ApplicationRecord
  belongs_to :user
  belongs_to :school
  belongs_to :category_ratingteaching
  belongs_to :category_ratingfacility
  belongs_to :category_ratingfood
  belongs_to :category_ratingmusic
  belongs_to :category_ratingsport

  validates_presence_of :content, presence: true, message: "can't be blank"
  validates_presence_of :title, presence: true, message: "can't be blank"
  validates_presence_of :category_ratingteaching_id, presence: true, message: "can't be blank"
  validates_presence_of :category_ratingfacility_id, presence: true, message: "can't be blank"
  validates_presence_of :category_ratingfood_id, presence: true, message: "can't be blank"
  validates_presence_of :category_ratingmusic_id, presence: true, message: "can't be blank"
  validates_presence_of :category_ratingsport_id, presence: true, message: "can't be blank"
end
