class AddTableStocksWithoutJoi < ActiveRecord::Migration[5.2]
  def change
    drop_table :stocks
    
    create_table :stocks
    
    add_column :stocks, :size, :string
    add_column :stocks, :offer_link, :text
    add_column :stocks, :old_price, :decimal
    add_column :stocks, :price, :decimal
    add_column :stocks, :seller_id, :integer
    add_column :stocks, :sneaker_id, :integer
    
    add_foreign_key :stocks, :sneakers
    add_foreign_key :stocks, :sellers
  end
end
