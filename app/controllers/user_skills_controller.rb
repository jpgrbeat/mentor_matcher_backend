class UserSkillsController < ApplicationController

  skip_before_action :authenticate

  def index
    render json: UserSkill.all
  end

  def create
  
    render json: UserSkill.create(user_skill_params)
  end

  private
  def user_skill_params
    params.require(:user_skill).permit(:user_id,:skill_id, :number_of_years_experience)
  end
end
