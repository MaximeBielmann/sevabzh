class DeleteSellerColumnsFromSneakers < ActiveRecord::Migration[5.2]
  def change
    remove_column :sneakers, :seller
    remove_column :sneakers, :size
    remove_column :sneakers, :offer_link
    remove_column :sneakers, :price
    remove_column :sneakers, :shipping_cost
    remove_column :sneakers, :shipping_time
  end
end
