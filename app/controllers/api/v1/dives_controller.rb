class Api::V1::DivesController < ApplicationController

  def index
    @dives = Dive.where(user: current_user).order(number: :asc)

    @images = []
    @dives.each do |dive|
      @images << Image.where(dive: dive).first if !Image.where(dive: dive).first.nil?
    end

    json_response = {"dives": @dives, "images": @images, "current_user": current_user}

    respond_to do |format|
      format.json { render json: json_response }
    end
  end

  def show
    @dive = Dive.find(params[:id])
    @images = @dive.images
    @videos = @dive.videos

    json_response = {"dive": @dive, "images": @images, "videos": @videos}

    respond_to do |format|
      format.json { render json: json_response }
    end
  end
end
