class SwipesController < ApplicationController
  before_action :set_swipe, only: %i[show update delete edit]

  def new
    @swipe = Swipe.new
    authorize @swipe
  end

  def create
    # raise
    @pet = Pet.find(params[:pet_id])
    @swipe = Swipe.new(liked: params[:liked])
    @swipe.user = current_user
    @swipe.pet = @pet
    authorize @swipe
    if @swipe.save
      mirors_swipes = Swipe.where(user: @pet.user, pet: current_user.pets)
      unless mirors_swipes.empty?
        @match = Match.new(user1: current_user, user2: @pet.user  )
        @match.save
        # [*mirors_swipes, @swipe].each do |swipe|
        #   MatchedSwipe.create(match: @match, swipe: swipe)
        # end
      end
      flash[:notice] = "all good"
    else
      flash[:alert] = "something went wrong"
    end
    redirect_to pets_path
  end

  private

  def set_swipe
    @swipe = Swipe.find(params[:id])
  end

  # def swipe_params
  #   params.require(:swipe).permit(:liked)
  # end
end
