class PlantsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_plant, only: [:show, :edit, :update, :destroy]
  def index
    @plants = current_user.plants
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    if @plant.save
      redirect_to plants_index_path, notice: "Plant added to inventory."
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update
    if @plant.update(plant_params)
      redirect_to plant_path, notice: "Plant updated successfully."
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :location, :water_need, :sun_type)
  end

  def find_plant
    @plant = Plant.find(params[:id])
  end
end
