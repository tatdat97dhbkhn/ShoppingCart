class StaticPagesController < ApplicationController
  def home
    @products = Product.all.page(params[:page]).per_page 8
  end
end
