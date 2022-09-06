class SwipesController < ApplicationController
  before_action :set_swipe, only: %i[show update delete edit]

  def new
    @swipe = Swipe.new
    authorize @swipe
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @swipe = Swipe.new(liked: params[:liked])

    @swipe.user = current_user
    @swipe.pet = @pet

    if @swipe.save
      mirors_swipes = Swipe.where(user: @pet.user, pet: current_user.pets)

      unless mirors_swipes.empty?
        @match = Match.new(user1: current_user, user2: @pet.user  )
        @match.save!
      end
    else
      flash[:alert] = "something went wrong"
    end

    authorize @swipe
    render json: {
      liked: params[:liked],
      matched: !@match.nil?,
      user_2_name:  @match.user2.name,
      user_1_photo:  @match.user1.avatar_url,
      user_2_photo: @match.user2.avatar_url,
      match_id:  @match.id
    }
  end

  private

  def set_swipe
    @swipe = Swipe.find(params[:id])
  end

  # def swipe_params
  #   params.require(:swipe).permit(:liked)
  # end
end
