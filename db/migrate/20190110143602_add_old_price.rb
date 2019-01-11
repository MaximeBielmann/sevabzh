class AddOldPrice < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :old_price, :decimal
  end
end
