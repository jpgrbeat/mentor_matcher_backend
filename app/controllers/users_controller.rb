class UsersController < ApplicationController

  skip_before_action :authenticate, only: [:index]

  def index
    render json: User.all.to_json(only: [:name, :job_title, :type_of, :location, :bio, :email, :id],
      include: [
        {mentor_matches:
          {
          only: [:mentor_id, :id],
          include: [mentor: {only: [:name, :job_title, :email, :location, :bio]}]
          }
        },
        {mentee_matches:
          {
          only: [:mentee_id, :id],
          include: [mentee: {only: [:name, :job_title, :email, :location, :bio]}]
          }
        },
        {user_skills: {
          only: [:number_of_years_experience,:id],
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
    render json: my_current_user.to_json(only: [:name, :job_title, :type_of, :id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :job_title, :type_of, :location, :bio, :email,:password_digest)
  end
end
