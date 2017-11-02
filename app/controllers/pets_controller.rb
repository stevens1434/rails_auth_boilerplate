class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def create
    Pet.create(pets_params)
    redirect_to pets_path
  end

  def edit
    @pet = Pet.find(params[:id])
    # @user = User.find(params[:id])
  end

  def update
    puts "editing pets"
    p = Pet.find(params[:id])
    p.update(pets_params)
    redirect_to pet_path
  end

  def new
    @pet = Pet.new
  end

  def destroy
    puts "pet_controller to destory pet in db"
    p = Pet.find(params[:id])
    p.destroy
    redirect_to pets_path
  end

  def show
    puts "pet_controller pointing to SHOW ROUTE"
    @pet = Pet.find(params[:id])
  end

  def pets_params
    params.require(:pets).permit(:name, @current_user.id)
  end
end
