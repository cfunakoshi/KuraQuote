class VehiclesController < ApplicationController
  def new
    @manufacturer = Vehiclemanufacturer.all
    @model = Vehiclemodel.all
    @specs = Vehiclespec.select("specifications")
    @usage = Vehicleuse.select("usage")
    @vin = Vehiclevin.select("vin")
    @year = Year.all
    @vehicle = Vehicle.new
    @user = current_user
  end
  
  
  def create
       @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      flash[:success] = "Vehicle Added!"
      redirect_to current_user
    else
      flash[:error] = "Oops, something went wrong!"
      render 'new'
    end
  end
  
  def edit
    @user = current_user
       @vehiclecount = 1
  end
  
  def destroy
    Vehicle.find(params[:id]).destroy
    flash[:success] = "Vehicle Deleted"
    redirect_to current_user
  end

     private

  def vehicle_params
    params.require(:vehicle).permit(:user_id, :manufacturer, :model, :specs, :use, :vin, :year)
    end
end