class AddMoredCategoryIdsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :category_country_id, :integer
    add_column :users, :category_region_id, :integer
    add_column :users, :category_zone_id, :integer
    add_column :users, :category_town_id, :integer
  end
end
