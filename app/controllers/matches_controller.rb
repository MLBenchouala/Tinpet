class MatchesController < ApplicationController
  def index
    @matches = policy_scope(current_user.matches)
    if params[:query].present?
      user1_matches = @matches.joins(:user1).where("users.name ILIKE ?", "%#{params[:query]}%")
      user2_matches = @matches.joins(:user2).where("users.name ILIKE ?", "%#{params[:query]}%")
      @matches = user1_matches + user2_matches
    end
  end

  def show
    @match = Match.find(params[:id])
    @message = Message.new
    authorize @match
  end
end
