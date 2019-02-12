class AddDateCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :coupon_start, :datetime
    add_column :coupons, :coupon_end, :datetime
  end
end
