class AddCategorySummarycheckIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :category_summarycheck_id, :integer
  end
end
