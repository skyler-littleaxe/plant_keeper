class WaterLogsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_log, only: [:show, :edit, :update, :destroy]
 

  def new
    @water_log = WaterLog.new
  end

  def create
    @water_logs = WaterLog.new(waterlog_params)
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
  end

  def destroy
  end
end
