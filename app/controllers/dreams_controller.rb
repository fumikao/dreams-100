class DreamsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def create
    dream = current_user.dreams.new(dream_params)
    if dream.save
      redirect_to user_path(current_user)
    else
      render user_path(current_user)
    end
  end

  def edit
    @dream = Dream.find(params[:id])
  end

  def update
    @dream = Dream.find(params[:id])
    if @dream.update(dream_params)
      redirect_to user_path(current_user)
    else
      render user_path(current_user)
    end
  end

  def destroy
    dream = Dream.find(params[:id])
    dream.destroy
    redirect_to user_path(current_user)
  end

  private
  def dream_params
    params.require(:dream).permit(:content, :opened, :status)
  end
end