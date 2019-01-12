class RenameStocksColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :stocks, :seller
    add_column :stocks, :seller_id, :integer
    add_foreign_key :stocks, :sellers
  end
end
