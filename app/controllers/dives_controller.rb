class DivesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

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

  def edit
    @dive = Dive.find(params[:id])
  end

  def update
    @dive = Dive.find(params[:id])
    @dive.update_attributes(dive_params)

    if @dive.save
      flash[:notice] = 'Dive added successfully'
      redirect_to @dive
    else
      flash[:alert] = @dive.errors.full_messages.join(', ')
      render :new
    end
  end

  def destroy
    @dive = Dive.find(params[:id])
    @dive.destroy
    redirect_to user_dives_path(current_user)
  end

  private

  def dive_params
    params.require(:dive).permit(:title, :site_name, :date, :location, :description,
                                 :rating, :type, :buddy_name, :max_depth, :average_depth,
                                 :duration, :weather, :water_temp, :air_temp, :banner)
  end
end
