class AddStocksTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :sneakers, :sellers, table_name: :stocks
    add_column :stocks, :size, :string
    add_column :stocks, :offer_link, :text
    add_column :stocks, :old_price, :decimal
    add_column :stocks, :price, :decimal
  end
end
