class AddDataToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :birthdate, :date
    add_column :users, :terms, :boolean
    add_column :users, :postcode, :string
  end
end
