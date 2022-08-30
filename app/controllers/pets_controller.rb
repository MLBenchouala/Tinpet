class PetsController < ApplicationController
  before_action :set_pet, only: %i[show update delete edit]

  def index
    @pets = policy_scope(Pet).where.not(user: current_user)
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

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :description, :sexe, :age, :race)
  end
end
