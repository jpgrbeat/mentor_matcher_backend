class SkillsController < ApplicationController

  skip_before_action :authenticate

  def index
    render json: Skill.all
  end
end
