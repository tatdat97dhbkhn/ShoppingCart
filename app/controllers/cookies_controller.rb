class CookiesController < ApplicationController
  def index
  end
  
  def add_to_cart
    @product = Product.find_by id: params[:id]
    flag = @product.quantity >= 1
    @id = params[:id].to_i
    if !flag
      flash[:danger] = "Hết sản phẩm..."
    else
      if @carts.count > 0
        @status = @carts.has_key? params[:id]
        if @status
          if @carts[params[:id]][1] < @product.quantity
            if params[:quantity].to_i > @product.quantity
              flash[:danger] = "Không đủ số lượng"
            elsif params[:quantity]
              @carts[params[:id]][1] = params[:quantity].to_i
              flash[:success] = "Successfully add to cart not params[:quatity]..."
            else
              @carts[params[:id]][1] += 1
              flash[:success] = "Successfully add to cart..."
            end
          else
            flash[:danger] = "Mặt hàng này hiện tại còn không đủ số lượng..."
          end
        else
          if !params[:quantity]
            @carts[params[:id]] = [@id, 1]  
          else
            @carts[params[:id]] = [@id, params[:quantity].to_i]
          end
          flash[:success] = "Successfully add to cart..."
        end
      else
        @carts[params[:id]] = if !params[:quantity]
          [@id, 1]
        else
          [@id, params[:quantity].to_i]
        end
        flash[:success] = "Successfully add to cart..."
      end
    end
    cookies[:cart] = ActiveSupport::JSON.encode @carts
    redirect_back fallback_location: root_path
  end

  def destroy
    if @carts.delete(params[:item].to_s)
      cookies[:cart] = ActiveSupport::JSON.encode @carts
      redirect_back fallback_location: root_path
    else
      flash[:danger] = "Fail"
      redirect_to root_path
    end
  end

  def details
    @total = 0
    @carts.each {
      |k,v|
      product = Product.find_by id: v[0]
      @total += v[1] * product.price
    }
    @customer = Customer.new
  end
end
