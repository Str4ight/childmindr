class AddFakeToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :fake, :boolean
  end
end
