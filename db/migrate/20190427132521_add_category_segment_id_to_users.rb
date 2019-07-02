class AddCategorySegmentIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :category_segment_id, :integer
  end
end
