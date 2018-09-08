class ApplicationController < ActionController::Base
  before_action :all_categories, :all_cart

  def all_categories
    @categories = Category.all
  end

  def all_cart
    @bill_details = BillDetail.all
  end
end
