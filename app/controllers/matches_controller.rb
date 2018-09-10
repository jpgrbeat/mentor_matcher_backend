class MatchesController < ApplicationController

  def index
    render json: Match.all
  end

  def create
    render json: Match.create(match_params)
  end

  def destroy
    @match = Match.find(params[:id])
    render json: @match.destroy
  end

  private
  def match_params
    params.require(:match).permit(:mentor_id, :mentee_id)
  end
end
