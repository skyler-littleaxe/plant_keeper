class PlantsController < ApplicationController
  def index
    @plants = current_user.plants
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    if @plant.save
      redirect_to plants_path, notice: "Plant added to inventory."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
