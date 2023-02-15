class CarsController < ApplicationController
  def index
    @cars = Car.all
  end
  def show
    @car = Car.find(params[:id])
  end
  def new
    @car = Car.new
    @parts = Part.all
  end
  def create
    @car = Car.new(car_params)
    @parts = Part.find(params[:part])
    if @car.save
      @car.parts << @parts
      redirect_to @car
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @car = Car.find(params[:id])
    @parts = Part.all
  end
  def update
    @car = Car.find(params[:id])
    @parts = Part.find(params[:part])
    @car.parts.clear
    if @car.update(car_params)
      @car.parts << @parts
      redirect_to @car
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
    @car = Car.find(params[:id])
    @car.destroy
  end
  private
  def car_params
    params.require(:car).permit(:name, :part_id, :car_file)
  end
end
