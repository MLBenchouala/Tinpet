class PetsController < ApplicationController
  before_action :set_pet, only: %i[show update destroy edit]

  def index
    @pets = policy_scope(Pet).where.not(user: current_user)
    @pets = @pets.where.not(id: current_user.swipes.pluck(:pet_id))
    @search = params["search"]
    @users = User.all
    if @search.present?

      @user_age = @search["user_age"]
      @user_address = @search["user_address"]
      @user_orientation = @search["user_orientation"]
      @user_gender = @search["user_gender"]
      @user_walk = @search["user_walk"]
      @user_more = @search["user_more"]
      @users = User.where(age: age_range_h(@user_age)) if @user_age != ''
      @users = current_user.nearbys(@user_address.to_i)

      @users = @users.where("orientation ILIKE ?", "%#{@user_orientation}%") if @user_orientation != ''
      @users = @users.where("gender ILIKE ?", "%#{@user_gender}%") if @user_gender != ''


      if @user_walk == '0' && @user_more == '0'
        @users
      else
        @users = @users.where(walk: true) if @user_walk == '1'
        @users = @users.where(walk: false) if @user_walk == '0'
        @users = @users.where(more: true) if @user_more == '1'
        @users = @users.where(more: false) if @user_more == '0'
      end

      @pets = Pet.where(user_id: @users.to_a.map(&:id))

      @sexe = @search["sexe"]
      @race = @search["race"]
      @age = @search["age"]

      @pets = @pets.where("sexe ILIKE ?", "%#{@sexe}%") if @sexe != ''
      @pets = @pets.where(age: age_range(@age)) if @age != ''
      @pets = @pets.where("race ILIKE ?", "%#{@race}%") if @race != ''
    end
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    authorize @pet
    if @pet.save
      flash[:notice] = 'Nouveau compagnon !'
      redirect_to pet_path(@pet)
    else
      flash[:alert] = "Erreur lors de l'enregistrement"
      render :new
    end
  end

  def update
    authorize @pet
    if @pet.update(pet_update_params)
      if params.dig(:pet, :photos).compact_blank.present?
        @pet.photos.purge
        @pet.photos.attach(params[:pet][:photos])
      end
      flash[:notice] = 'Mis à jour'
      redirect_to pet_path(@pet)
    else
      flash[:alert] = "Erreur lors de l'enregistrement"
      render :new
    end
  end

  def show
    authorize @pet
  end

  def destroy
    @pet.destroy
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

  def pet_update_params
    params.require(:pet).permit(:name, :description, :sexe, :age, :race)
  end

  def age_range(input_age)
    case input_age
    when '0 - 4 ans'
      0..4
    when '4 - 8 ans'
      4..8
    when '8 ans et +'
      8..
    end
  end

  def age_range_h(input_age_h)
    case input_age_h
    when '18 - 25 ans'
      18..25
    when '25 - 35 ans'
      25..35
    when '35 - 45 ans'
      35..45
    when '45 ans et +'
      45..
    end
  end
end
