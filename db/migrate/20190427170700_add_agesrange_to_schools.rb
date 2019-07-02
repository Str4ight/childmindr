class AddAgesrangeToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :start_age, :integer
    add_column :schools, :end_age, :integer
  end
end
