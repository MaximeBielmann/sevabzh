class AddBrandIdToSneakers < ActiveRecord::Migration[5.2]
  def change
    add_column :sneakers, :brand_id, :integer
  end
end
