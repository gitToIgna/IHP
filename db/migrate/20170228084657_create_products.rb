class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.datetime :expiration
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :products, [:user_id, :created_at]
  end
end