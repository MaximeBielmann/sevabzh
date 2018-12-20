class RenameShippingTime < ActiveRecord::Migration[5.2]
  def change
    rename_column :stocks, :shippig_time, :shipping_time
  end
end
