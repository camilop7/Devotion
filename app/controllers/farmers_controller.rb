class FarmersController < ApplicationController
  before_action :set_farmer, only: [:show, :edit, :update, :destroy]

  def index
    @farmers = Farmer.all
  end

  def show
  end

  def new
    @farmer = Farmer.new
  end

  def create
    @farmer = Farmer.new(farmer_params)
    if @farmer.save
      redirect_to @farmer, notice: 'Farmer was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @farmer.update(farmer_params)
      redirect_to @farmer, notice: 'Farmer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @farmer.destroy
    redirect_to farmers_url, notice: 'Farmer was successfully destroyed.'
  end

  private

  def set_farmer
    @farmer = Farmer.find(params[:id])
  end

  def farmer_params
    params.require(:farmer).permit(:name, :location, :description, :additional_info)
  end
end
