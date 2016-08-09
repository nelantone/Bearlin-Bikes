class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :color
      t.float :price
    end
  end
end
