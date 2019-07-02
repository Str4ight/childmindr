class AddCategoryIdsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :category_service_id, :integer
    add_column :users, :category_gender_id, :integer
  end
end
