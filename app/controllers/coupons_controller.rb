class CouponsController < ApplicationController
def index
@coupons = Coupon.all
render json: @coupons, status: :ok
end

end