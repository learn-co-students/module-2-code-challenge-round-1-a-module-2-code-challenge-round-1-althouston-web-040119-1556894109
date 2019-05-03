class VendorsController < ApplicationController

  # before_action :current_vendor, [:show, :edit, :update, :destroy]

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

  def new
    @vendor = Vendor.new
    # @sweets = Sweet.all
  end

  def create
    @vendor = Vendor.create(vendor_params)
    redirects_to @vendor
  end

  def edit
    @vendor = Vendor.find(params[:id])
    # @sweets = Sweet.all
  end

  def update
    @vendor = Vendor.find(params[:id])
    @vendor.update(vendor_params)
    redirect_to @vendor
  end

  def destroy
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
    redirect_to vendors_path
  end

  private

  # def current_vendor
  #   @vendor = Vendor.find(params[:id])
  # end

  def vendor_params
    params.require(:vendor).permit(:name, :sweet_id)
  end
