class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find_by id: params[:id]
  end

  def edit; end

  def create
    @customer = Customer.new customer_params
    @customer.save

    @bill = Bill.create customer_id: @customer.id
    @total = 0
    @carts.each {
      |k,v|
      product = Product.find_by id: v[0]
      product.update_attributes quantity: product.quantity - v[1]

      @total += v[1]*product.price
      bill_detail = BillDetail.create(product_id: product.id,
        bill_id: @bill.id, quantity: v[1], price: v[1]*product.price)
     
    }
    @bill.update_attributes total: @total

    if session[:payment]
      @bill.update_attributes payment: session[:payment]
      session.delete(:payment) 
    end

    @carts.clear
    cookies.delete :cart
    flash[:success] = "Bạn đã thanh toán thành công!"

    redirect_to list_carts_path
  end

  def customer_params
    params.require(:customer).permit Customer::CUSTOMER_ATTRS
  end
end
