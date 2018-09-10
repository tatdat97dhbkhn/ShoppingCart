class ApplicationController < ActionController::Base
  require "json"
  before_action :all_categories, :set_cart
  before_action :exam_cart, :all_cart

  def all_categories
    @categories = Category.all
  end

  def set_cart
    if cookies[:cart]
      @carts = JSON.parse cookies[:cart]
    else
      cookies[:cart] = JSON.generate({})
      @carts = JSON.parse cookies[:cart]
    end
  end

  def all_cart
    flag = exam_cart
    if flag
      @carts.each {
        |k,v|
        product = Product.find_by id: v[0]
        if v[1] > product.quantity
          @carts.delete k
        end
      }
    end
  end

  def exam_cart
    if @carts.count > 0
      true
    else
      false
    end
  end
end
