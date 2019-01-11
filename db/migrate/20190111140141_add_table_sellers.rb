class AddTableSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers
    add_column :sellers, :logo_url, :text
    add_column :sellers, :vendor, :string
    add_column :sellers, :country, :string
    add_column :sellers, :description, :text
    add_column :sellers, :shop_link, :text
    add_column :sellers, :shipping_cost, :string
    add_column :sellers, :shipping_time, :string
    add_column :sellers, :payment, :string
   
    remove_column :stocks, :shipping_cost
    remove_column :stocks, :shipping_time
  end
end
