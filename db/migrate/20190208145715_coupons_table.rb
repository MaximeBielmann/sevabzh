class CouponsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons
    add_column :coupons, :seller_id, :integer
    add_column :coupons, :brand_id, :integer
    add_column :coupons, :sneaker_id, :integer
    add_column :coupons, :coupon_title, :string
  end
end
