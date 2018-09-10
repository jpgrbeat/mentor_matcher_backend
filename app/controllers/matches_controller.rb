class MatchesController < ApplicationController

  def create
    render json: Match.create(match_params)
  end

  def destroy
    @match = Match.find(params[:id])
    render json: @match.destroy
  end

  private
  def match_params
    params.permit(:match).require(:mentor_id, :mentee_id)
  end
end
