class DivesController < ApplicationController
  def index
    @dives = Dive.all
  end

  def show
    @dive = Dive.find(params[:id])
  end

  def new
    @dive = Dive.new
    unless current_user
      flash[:error] = 'Must be signed in to add a dive.'
      redirect_to root_path
    end
  end

  def create
    @dive = Dive.new(dive_params)
    @dive.user = current_user
    if @dive.save
      flash[:notice] = 'Dive added successfully'
      redirect_to @dive
    else
      flash[:alert] = @dive.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def dive_params
    params.require(:dive).permit(:title, :site_name, :date, :location, :description,
                                 :rating, :type, :buddy_name, :max_depth, :average_depth,
                                 :duration, :weather, :water_temp, :air_temp, :banner_url)
  end
end
