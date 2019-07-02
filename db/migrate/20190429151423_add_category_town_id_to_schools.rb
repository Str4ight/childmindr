class AddCategoryTownIdToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :category_town_id, :integer
  end
end
