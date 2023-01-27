class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find_by(slug: params[:slug])
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: { error: user.errors.messages }, status: 422
    end
  end

  def update
    user = User.find_by(slug: params[:slug])
    if user.update(user_params)
      render json: user
    else
      render json: { error: user.errors.messages }, status: 422
    end
  end

  def destroy
    user = User.find_by(slug: params[:slug])
    if user.destroy
      head :no_content
    else
      render json: { error: user.errors.messages }, status: 422
    end
  end

  private 
  def user_params
    params.require(:user).permit(:name, :image_url)
  end

end
