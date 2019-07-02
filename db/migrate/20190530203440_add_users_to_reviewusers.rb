class AddUsersToReviewusers < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviewusers, :parent, index: true
    add_reference :reviewusers, :provider, index: true
    add_foreign_key :reviewusers, :users, column: :parent_id, primary_key: :id
    add_foreign_key :reviewusers, :users, column: :provider_id, primary_key: :id
  end
end
