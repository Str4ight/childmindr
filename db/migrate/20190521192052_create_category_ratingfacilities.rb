class CreateCategoryRatingfacilities < ActiveRecord::Migration[5.1]
  def change
    create_table :category_ratingfacilities do |t|
      t.string :name

      t.timestamps
    end
  end
end
