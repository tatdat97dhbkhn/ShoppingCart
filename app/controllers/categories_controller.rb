class CategoriesController < ApplicationController
  before_action :find_category, only: %i(edit update destroy)
  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = "Successfully created..."
      redirect_to request.referer
    else
      flash[:danger] = "Fail create..."
      render :new
    end
  end

  def index
    @categories = Category.used.page(params[:page]).per_page 10
  end

  def edit; end

  def update
    if @category.update_attributes category_params
      flash[:success] = "Update successfull!"
      redirect_to categories_path
    else
      flash[:danger] = "Fail"
      redirect_to root_path
    end
  end

  def destroy
    flash[:warning] = @category.destroy_actions
    redirect_back fallback_location: root_path
  end

  private
  def category_params
    params.require(:category).permit Category::CATEGORY_ATTRS
  end

  def find_category
    @category = Category.find_by id: params[:id]
    return if @category
    redirect_to root_path
  end
end
