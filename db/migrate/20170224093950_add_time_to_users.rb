class AddTimeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :start_time, :time
    add_column :users, :end_time, :time
  end
end
