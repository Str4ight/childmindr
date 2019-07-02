class CreateCategoryRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :category_regions do |t|
      t.string :name

      t.timestamps
    end
  end
end
