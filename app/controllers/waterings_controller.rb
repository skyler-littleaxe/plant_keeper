class WateringsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_log, only: [:show, :edit, :update, :destroy]
 

  def new
    @watering = Watering.new
  end

  def create
    @watering = Watering.new(watering_params)
    if @watering.save
      redirect_to plants_index_path, notice: "Watering Log added to #{@watering.plant.name}."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @watering = Watering.update(watering_params)
      redirect_to plants_index_path, notice: "Water Log for #{@watering.plant.name} successfully updated."
    else
      render :edit
    end
  end

  def destroy
    plant_name = @watering.plant.name
    @watering.destroy
    redirect_to plants_index_path, notice: "Water Log for #{plant_name} successfully deleted."
  end

  private

  def watering_params
    params.require(:watering).permit(:water_date, :water_time, :user_id, :plant_id )
  end

  def find_log
    @watering = Watering.find(params[:id])
  end


end
