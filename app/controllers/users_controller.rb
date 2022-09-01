class UsersController < ApplicationController

  before_action :set_user, only: %i[show]
  def show
    authorize @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :description, :genre, :age)
  end
end
