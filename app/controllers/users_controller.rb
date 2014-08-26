class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @user = User.new
    @users = User.all
    @application = TaxForm.new(@user)
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

end
