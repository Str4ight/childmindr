class CreateCategorySearches < ActiveRecord::Migration[5.1]
  def change
    create_table :category_searches do |t|
      t.string :name

      t.timestamps
    end
  end
end
