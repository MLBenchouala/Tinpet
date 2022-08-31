class UsersController < ApplicationController
  def show
    @user = current.user
  end

  def create
  end

  def index
  end
end
