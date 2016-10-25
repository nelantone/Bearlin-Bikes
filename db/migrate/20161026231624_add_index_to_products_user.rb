class AddIndexToProductsUser < ActiveRecord::Migration[5.0]
  def change
    change_table :products do |t|
      t.integer :user_id
    end
    add_index :products, :user_id
  end
end
