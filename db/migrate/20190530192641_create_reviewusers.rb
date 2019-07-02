class CreateReviewusers < ActiveRecord::Migration[5.1]
  def change
    create_table :reviewusers do |t|
      t.text :content
      t.integer :user_id
      t.string :title
      t.integer :category_ratingclean_id

      t.timestamps
    end
  end
end
