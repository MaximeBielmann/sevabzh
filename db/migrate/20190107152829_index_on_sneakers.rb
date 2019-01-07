class IndexOnSneakers < ActiveRecord::Migration[5.2]
  def change
    add_index :sneakers, :sneakers_ref, unique: true
  end
end
