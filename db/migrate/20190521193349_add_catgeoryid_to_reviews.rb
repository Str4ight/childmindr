class AddCatgeoryidToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :category_ratingfacility_id, :integer
    add_column :reviews, :category_ratingfood_id, :integer
    add_column :reviews, :category_ratingmusic_id, :integer
    add_column :reviews, :category_ratingsport_id, :integer
  end
end
