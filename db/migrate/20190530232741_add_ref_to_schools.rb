class AddRefToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :ref, :string
  end
end
