class AddTableStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks
    add_column :stocks, :sneaker_id, :integer
    add_column :stocks, :seller, :string
    add_column :stocks, :size, :string
    add_column :stocks, :offer_link, :text
    add_column :stocks, :price, :decimal
    add_column :stocks, :shipping_cost, :string
    add_column :stocks, :shippig_time, :string
  end
end
