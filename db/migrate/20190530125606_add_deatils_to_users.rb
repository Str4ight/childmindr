class AddDeatilsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :about, :text
    add_column :users, :experience, :text
    add_column :users, :qualifications, :text
    add_column :users, :availability, :text
  end
end
