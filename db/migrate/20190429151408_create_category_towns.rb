class CreateCategoryTowns < ActiveRecord::Migration[5.1]
  def change
    create_table :category_towns do |t|
      t.string :name
      t.integer :category_zone_id

      t.timestamps
    end
  end
end
