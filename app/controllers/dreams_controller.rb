class DreamsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :about]
  before_action :set_dream, only: [:edit, :update, :destroy]

  def index
  end

  def about
  end

  def create
    @dream = current_user.dreams.new(dream_params)
    if @dream.save
      respond_to do |format|
        format.html { redirect_to user_path(current_user) }
        format.json
      end
    else
      redirect_to user_path(current_user)
    end
  end

  def edit
  end

  def update
    if @dream.update(dream_params)
      redirect_to user_path(current_user)
    else
      render user_path(current_user)
    end
  end

  def destroy
    @dream.destroy
  end

  def sort
    dream = Dream.find(params[:dream_id])
    dream.update(dream_params)
    render nothing: true
  end

  private
  def dream_params
    params.require(:dream).permit(:content, :opened, :status, :row_order_position)
  end

  def set_dream
    @dream = Dream.find(params[:id])
  end
end