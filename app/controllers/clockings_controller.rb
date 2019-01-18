class ClockingsController < ApplicationController

  def index
    @logs = Clocking.all
  end

  def new
    @clocking = Clocking.new
  end

  def create
    @clocking = Clocking.new(clocking_params)
    @clocking.time = Time.now
    if @clocking.save
      flash[:success] = "Clocked #{params[:clocking][:clock_type]} succesfully"
      redirect_to clockings_path
    else
      render :new
    end
  end

  private

  def clocking_params
    params.require(:clocking).permit(:name , :clock_type)
  end

end
