class BillsController < ApplicationController
  def update_payment
    session[:payment] = params[:payment]
  end
end
