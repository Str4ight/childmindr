class AddCategoryRoleIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :category_role_id, :integer
  end
end
