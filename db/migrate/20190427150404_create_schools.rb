class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :image
      t.text :about
      t.text :service
      t.string :email
      t.string :telepone
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :postcode
      t.integer :pupils
      t.string :offsetreportlink
      t.boolean :approve

      t.timestamps
    end
  end
end
