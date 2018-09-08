class BillsController < ApplicationController
  def details
    @total = 0
    @bill_details.each do |bill_detail|
      @total += bill_detail.quantity * bill_detail.product.price
    end
  end

  def payment
    @bill_details.destroy_all
    flash[:success] = "Bạn đã thanh toán thành công!"
    redirect_to bill_details_path
  end
end
