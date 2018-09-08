class ApplicationController < ActionController::Base
  before_action :all_categories

  def all_categories
    @categories = Category.all
  end
end
