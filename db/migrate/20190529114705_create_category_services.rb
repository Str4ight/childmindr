class CreateCategoryServices < ActiveRecord::Migration[5.1]
  def change
    create_table :category_services do |t|
      t.string :name

      t.timestamps
    end
  end
end
