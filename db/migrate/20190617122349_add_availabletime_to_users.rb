class AddAvailabletimeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :mondays, :boolean
    add_column :users, :tuesdays, :boolean
    add_column :users, :wednesdays, :boolean
    add_column :users, :thursdays, :boolean
    add_column :users, :fridays, :boolean
    add_column :users, :saturdays, :boolean
    add_column :users, :sundays, :boolean
    add_column :users, :mstart_time, :time
    add_column :users, :mend_time, :time
    add_column :users, :tstart_time, :time
    add_column :users, :tend_time, :time
    add_column :users, :wstart_time, :time
    add_column :users, :wend_time, :time
    add_column :users, :thstart_time, :time
    add_column :users, :thend_time, :time
    add_column :users, :fstart_time, :time
    add_column :users, :fend_time, :time
    add_column :users, :sstart_time, :time
    add_column :users, :send_time, :time
    add_column :users, :sustart_time, :time
    add_column :users, :suend_time, :time
  end
end
