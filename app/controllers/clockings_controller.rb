class ClockingsController < ApplicationController

  def index

  end

  def new
    @clocking = Clocking.new
  end

end
