class DreamsController < ApplicationController
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

  private
  def dream_params
    params.require(:dream).permit(:content, :opened)
  end
end
