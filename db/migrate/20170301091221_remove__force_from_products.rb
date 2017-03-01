class RemoveForceFromProducts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :products, :—force, :string
  end
end
