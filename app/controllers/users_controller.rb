class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all.page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
    @dream = @user.dreams.new
    if @user == current_user
      @dreams = @user.dreams
    else
      @dreams = @user.dreams.where(opened: true)
    end
  end
end
