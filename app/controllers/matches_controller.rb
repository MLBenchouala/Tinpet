class MatchesController < ApplicationController
  def index
    @matches = policy_scope(Match)
  end

  def show
    @match = Match.find(params[:id])
    @message = Message.new
    authorize @match
  end
end
