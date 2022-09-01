class PetsController < ApplicationController
  before_action :set_pet, only: %i[show update delete edit]

  def index
    @pets = policy_scope(Pet).where.not(user: current_user)
    @search = params["search"]
    @users = User.all
    if @search.present?

      @user_name = @search["user_name"]
      @user_age = @search["user_age"]
      @user_address = @search["user_address"]
      @user_orientation = @search["user_orientation"]
      @user_gender = @search["user_gender"]
      @user_walk = @search["user_walk"]
      @user_more = @search["user_more"]

      @users = User.where("name ILIKE ?", "%#{@user_name}%") if @user_name != ''
      @users = @users.where(age: @user_age) if @user_age != ''
      @users = @users.where("address ILIKE ?", "%#{@user_address}%") if @user_address != ''
      @users = @users.where("orientation ILIKE ?", "%#{@user_orientation}%") if @user_orientation != ''
      @users = @users.where("gender ILIKE ?", "%#{@user_gender}%") if @user_gender != ''
      @users = @users.where(walk: true) if @user_walk == '1'
      @users = @users.where(walk: false) if @user_walk == '0'
      @users = @users.where(more: true) if @user_more == '1'
      @users = @users.where(more: false) if @user_more == '0'

      @pets = @pets.where(user: @users)

      @sexe = @search["sexe"]
      @race = @search["race"]
      @age = @search["age"]

      @pets = @pets.where("sexe ILIKE ?", "%#{@sexe}%") if @sexe != ''
      @pets = @pets.where(age: @age) if @age != ''
      @pets = @pets.where("race ILIKE ?", "%#{@race}%") if @race != ''
    end
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    authorize @pet
    if @pet.save
      flash[:notice] = 'Pet created'
      redirect_to pet_path(@pet)
    else
      flash[:alert] = 'AAAAAAAA'
      render :new
    end
  end

  def update
    @pet.update(pet_params)
    authorize @pet
  end

  def show
    authorize @pet
  end

  def delete
    authorize @pet
  end

  def edit
    authorize @pet
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def filtres
    @pets = Pet.all
    skip_authorization
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :description, :sexe, :age, :race, photos: [])
  end
end
