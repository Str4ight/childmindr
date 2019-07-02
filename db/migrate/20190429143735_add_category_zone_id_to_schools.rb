class AddCategoryZoneIdToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :category_zone_id, :integer
  end
end
