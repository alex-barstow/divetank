class Api::V1::DivesController < ApplicationController

  def index
    @dives = Dive.all

    json_response = {"dives": @dives, "current_user": current_user}

    respond_to do |format|
      format.json { render json: json_response }
    end
  end

  def show
    @dive = Dive.find(params[:id])
    @images = @dive.images

    json_response = {"dive": @dive, "images": @images}

    respond_to do |format|
      format.json { render json: json_response }
    end
  end
end
