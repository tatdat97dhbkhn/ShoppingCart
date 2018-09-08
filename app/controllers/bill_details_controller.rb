class BillDetailsController < ApplicationController
  def index; end

  def add_to_cart
    @product = Product.find_by id: params[:id]
    flag = check_quantity @product
    if flag
      @pro = BillDetail.find_by product_id: params[:id]
      if @pro
        if @pro.quantity < @product.quantity
          if params[:quantity].to_i > @product.quantity
            flash[:danger] = "Không đủ số lượng"
          elsif params[:quantity]
            @pro.update_attributes quantity: params[:quantity].to_i
            flash[:success] = "Successfully add to cart..."
          else
            @pro.update_attributes quantity: (@pro.quantity + 1)
            flash[:success] = "Successfully add to cart..."
          end
        else
          flash[:danger] = "Mặt hàng này hiện tại còn không đủ số lượng..."
        end
      else
        @bill_detail = if params[:quantity]
                         BillDetail.new bill_id: 1, product_id: params[:id],
                         quantity: params[:quantity].to_i, price: @product.price
                       else
                         BillDetail.new bill_id: 1, product_id: params[:id],
                         quantity: 1, price: @product.price
                       end
        @bill_detail.save
        flash[:success] = "Successfully add to cart..."
      end
    else
      flash[:danger] = "Hết sản phẩm..."
    end
    redirect_back fallback_location: root_path
  end

  def check_quantity product
    product.quantity >= 1
  end

  def destroy
    @bill_detail = BillDetail.find_by id: params[:id]
    if @bill_detail.destroy
      redirect_back fallback_location: root_path
    else
      flash[:danger] = "Fail"
      redirect_to home_path
    end
  end
end
