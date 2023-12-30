class AddAdminUserToCoupon < ActiveRecord::Migration[7.0]
  def change
    add_reference :coupons, :admin_user, null: false, foreign_key: true
  end
end
