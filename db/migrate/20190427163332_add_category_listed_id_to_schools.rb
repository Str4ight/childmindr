class AddCategoryListedIdToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :category_schooltype_id, :integer
    add_column :schools, :category_country_id, :integer
    add_column :schools, :category_region_id, :integer
    add_column :schools, :user_id, :integer
  end
end
