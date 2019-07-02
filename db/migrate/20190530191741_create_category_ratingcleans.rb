class CreateCategoryRatingcleans < ActiveRecord::Migration[5.1]
  def change
    create_table :category_ratingcleans do |t|
      t.string :name

      t.timestamps
    end
  end
end
