class StaticPagesController < ApplicationController
  def home
    @products = Product.where(deleted: false).page(params[:page]).per_page 8
  end
end
