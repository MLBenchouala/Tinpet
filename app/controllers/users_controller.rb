class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit]


  def show
    authorize @user
  end

  def edit
    authorize @user
  end

  def update
    User.find(params[:id]).update(user_params)
    skip_authorization
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :description, :genre, :age, photos: [])
  end
end
