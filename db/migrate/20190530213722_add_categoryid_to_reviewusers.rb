class AddCategoryidToReviewusers < ActiveRecord::Migration[5.1]
  def change
    add_column :reviewusers, :category_ratingcommunication_id, :integer
    add_column :reviewusers, :category_ratingfood_id, :integer
    add_column :reviewusers, :category_ratingsetting_id, :integer
  end
end
