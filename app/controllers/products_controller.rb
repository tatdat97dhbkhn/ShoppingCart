class ProductsController < ApplicationController
  before_action :find_product, only: %i(edit update destroy)
  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save
      flash[:success] = "Successfully created..."
      redirect_to request.referer
    else
      flash[:danger] = "Fail create..."
      render :new
    end
  end

  def index
    @products = Product.all.page(params[:page]).per_page 10
  end

  def edit; end

  def update
    if @product.update_attributes product_params
      flash[:success] = "Update successfull!"
      redirect_to products_path
    else
      flash[:danger] = "Fail"
      redirect_to root_path
    end
  end

  def destroy
    if @product.destroy
      flash[:success] = "Deleted successfull"
      redirect_to products_url
    else
      flash[:danger] = "Fails"
      redirect_to home_path
    end
  end

  private
  def product_params
    params.require(:product).permit Product::PRODUCT_ATTRS
  end

  def find_product
    @product = Product.find_by id: params[:id]
    return if @product
    redirect_to root_path
  end
end
