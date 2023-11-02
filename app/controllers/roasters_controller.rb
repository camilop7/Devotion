class RoastersController < ApplicationController
  before_action :set_roaster, only: [:show, :edit, :update, :destroy]

  def index
    @roasters = Roaster.all
  end

  def show
    @roaster = Roaster.find(params[:id])
    @products = @roaster.products
  end


  def home
    @roasters = Roaster.all
  end

  def new
    @roaster = Roaster.new
  end

  def create
    @roaster = Roaster.new(roaster_params)
    if @roaster.save
      redirect_to @roaster, notice: 'Roaster was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @roaster.update(roaster_params)
      redirect_to @roaster, notice: 'Roaster was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @roaster.destroy
    redirect_to roasters_url, notice: 'Roaster was successfully destroyed.'
  end

  private

  def set_roaster
    @roaster = Roaster.find(params[:id])
  end

  def roaster_params
    params.require(:roaster).permit(:name, :origin, :description, :additional_info)
  end
end
