class WaterLogsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_log, only: [:show, :edit, :update, :destroy]
 

  def new
    @water_log = WaterLog.new
  end

  def create
    @water_log = WaterLog.new(waterlog_params)
    if @plant.save
      redirect_to plants_index_path, notice: "Water Log added to #{@water_logs.plant.name}."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @water_log = WaterLog.update(waterlog_params)
      redirect_to plants_index_path, notice: "Water Log for #{@water_logs.plant.name} successfully updated."
    else
      render :edit
    end
  end

  def destroy
    plant_name = @water_log.plant.name
    @water_log.destroy
    redirect_to plants_index_path, notice: "Water Log for #{plant_name} successfully deleted."
  end
end
