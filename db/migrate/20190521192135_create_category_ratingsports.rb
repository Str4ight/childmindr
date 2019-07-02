class CreateCategoryRatingsports < ActiveRecord::Migration[5.1]
  def change
    create_table :category_ratingsports do |t|
      t.string :name

      t.timestamps
    end
  end
end
