class Api::V1::DivesController < ApplicationController

  def index
    @dives = Dive.all
    @images = Image.all

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
