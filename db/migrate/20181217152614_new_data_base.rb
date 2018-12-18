class NewDataBase < ActiveRecord::Migration[5.2]
  def change
    create_table :sneakers
    add_column :sneakers, :sneakers_ref, :string
    add_column :sneakers, :brand, :string
    add_column :sneakers, :title, :string
    add_column :sneakers, :color, :string
    add_column :sneakers, :seller, :string
    add_column :sneakers, :size, :string
    add_column :sneakers, :img_url, :text
    add_column :sneakers, :offer_link, :text
    add_column :sneakers, :price, :decimal
    add_column :sneakers, :shipping_cost, :decimal
    add_column :sneakers, :shipping_time, :string
  end
end
