class SweetsController < ApplicationController
  
  # before_action :current_sweet, [:show, :edit, :update, :destroy]

  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find(params[:id])
  end

  def new
    @sweet = Sweet.new
    # @vendors = vendor.all
  end

  def create
    @sweet = Sweet.create(sweet_params)
    redirects_to @sweet
  end

  def edit
    @sweet = Sweet.find(params[:id])
    # @vendors = Vendor.all
  end

  def update
    @sweet = Sweet.find(params[:id])
    @sweet.update(sweet_params)
    redirect_to @sweet
  end

  def destroy
    @sweet = Sweet.find(params[:id])
    @sweet.destroy
    redirect_to sweets_path
  end

  private

  # def current_sweet
  #   @sweet = Sweet.find(params[:id])
  # end

  def sweet_params
    params.require(:sweet).permit(:name, :vendor_id)
  end








end
