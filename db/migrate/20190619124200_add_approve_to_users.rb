class AddApproveToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :approve, :boolean
  end
end
