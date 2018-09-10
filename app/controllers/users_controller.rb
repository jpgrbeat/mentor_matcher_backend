class UsersController < ApplicationController

  before_action :find_user, only: [:show, :update, :destroy]
  skip_before_action :authenticate, only: [:index]

  def index
    render json: User.all.to_json(only: [:name, :job_title, :type_of, :location, :bio, :email, :id],
      include: [
        {mentor_matches:
          {
          only: [:mentor_id],
          include: [mentor: {only: [:name, :job_title, :email, :location, :bio]}]
          }
        },
        {mentee_matches:
          {
          only: [:mentee_id],
          include: [mentee: {only: [:name, :job_title, :email, :location, :bio]}]
          }
        },
        {user_skills: {
          only: [:number_of_years_experience],
          include: [
            skill: {only: :name}
          ]
          }
        }
      ])
  end

  def create
    render json: User.create(user_params)
  end

  def show
    render json: @user.to_json(only: [:name, :job_title, :type_of, :location, :bio, :email, :id],
      include: [
        {mentor_matches:
          {
          only: [:mentor_id],
          include: [mentor: {only: [:name, :job_title, :email, :location, :bio]}]
          }
        },
        {mentee_matches:
          {
          only: [:mentee_id],
          include: [mentee: {only: [:name, :job_title, :email, :location, :bio]}]
          }
        },
        {user_skills: {
          only: [:number_of_years_experience],
          include: [
            skill: {only: :name}
          ]
          }
        }
      ])
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
    params.require(:user).permit(:name, :job_title, :type_of, :location, :bio, :email,:password_digest)
  end
end
