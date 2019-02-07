class SwitchBrandToBrandId < ActiveRecord::Migration[5.2]
  def change
    remove_column :sneakers, :brand
    add_column :sneakers, :brand_id, :integer
  end
end
