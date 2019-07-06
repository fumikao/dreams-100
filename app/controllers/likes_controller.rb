class LikesController < ApplicationController
  def create
    dream = Dream.find(params[:dream_id])
    like = Like.create(user_id: current_user.id, dream_id: dream.id)
    redirect_to user_path(dream.user)
  end
  
  def destroy
    dream = Dream.find(params[:dream_id])
    like = Like.find_by(user_id: current_user.id, dream_id: dream.id)
    like.destroy
    redirect_to user_path(dream.user)
  end
end