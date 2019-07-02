class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all.page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
    @dream = Dream.new
    if @user == current_user
      @dreams = @user.dreams
    else
      @dreams = @user.dreams.where(opened: true)
    end
    
    @chart = [
      ["未実施", @user.dreams.where(status: 0).length],
      ["実施中", @user.dreams.where(status: 1).length],
      ["達成！", @user.dreams.where(status: 2).length]
    ]
  end
end
