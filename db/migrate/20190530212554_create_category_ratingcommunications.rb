class CreateCategoryRatingcommunications < ActiveRecord::Migration[5.1]
  def change
    create_table :category_ratingcommunications do |t|
      t.string :name

      t.timestamps
    end
  end
end
