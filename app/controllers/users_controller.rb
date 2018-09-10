class UsersController < ApplicationController

  before_action :find_user, only: [:show, :update, :destroy]

  def index
    render json: User.all
  end

  def create
    debugger
    render json: User.create(user_params)
  end

  def show
    render json: @user
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    render json: @user.destroy
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :job_title, :type_of, :location, :bio, :email, :password_digest)
  end
end
