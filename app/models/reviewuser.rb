class Reviewuser < ApplicationRecord
  belongs_to :parent, class_name: "User", foreign_key: "parent_id"
  belongs_to :provider, class_name: "User", foreign_key: "provider_id"
  belongs_to :category_ratingcommunication
  belongs_to :category_ratingclean
  belongs_to :category_ratingfood
  belongs_to :category_ratingsetting

  validates_presence_of :content, presence: true, message: "can't be blank"
  validates_presence_of :title, presence: true, message: "can't be blank"
  validates_presence_of :category_ratingclean_id, presence: true, message: "can't be blank"
  validates_presence_of :category_ratingcommunication_id, presence: true, message: "can't be blank"
  validates_presence_of :category_ratingfood_id, presence: true, message: "can't be blank"
  validates_presence_of :category_ratingsetting_id, presence: true, message: "can't be blank"
end
