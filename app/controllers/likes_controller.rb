class LikesController < ApplicationController
  def index
    likes = Like.all
    render json: likes
  end

  def show
    like = Like.find_by(id: params[:id])
    if like
      render json: like
    else
      render json: { error: "like not found." }, status: 404
    end
  end

  def create
    #byebug
    like = Like.create(like_params)
    render json: like
  end

  def update
    #byebug
    like = Like.find_by(id: params[:id])
    if like
      Like.update(like_params)
      render json: like
    else
      render json: { error: "like doesn't exist" }
    end
  end

  def destroy
    
    like = Like.find_by(id: params[:id])
    if like
      Like.destroy
      render json: like
    else
      render json: { error: "like doesn't exist" }
    end
  end

  private

  def like_params
    params.require(:like).permit(:contribution_id)
  end
end
