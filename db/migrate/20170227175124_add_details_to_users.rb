class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :details, :string
  end
end
