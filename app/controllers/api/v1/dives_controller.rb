class Api::V1::DivesController < ApplicationController

  def index
    dives = Dive.where(user: current_user).order(number: :desc)

    images = []
    dives.each do |dive|
      images << Image.where(dive: dive).first if !Image.where(dive: dive).first.nil?
    end

    depths_array = []
    dives.each do |dive|
      depths_array << dive.max_depth
    end

    zero_to_thirty = depths_array.select {|d| d < 31}.size
    thirty_to_sixty = depths_array.select {|d| d.between?(31,60)}.size
    sixty_to_ninety = depths_array.select {|d| d.between?(61,90)}.size
    ninety_to_onethirty = depths_array.select {|d| d.between?(91,130)}.size
    onethirty_and_above = depths_array.select {|d| d > 130}.size

    chart_ranges = {first: zero_to_thirty, second: thirty_to_sixty, third: sixty_to_ninety, fourth: ninety_to_onethirty, fifth: onethirty_and_above}

    json_response = {"dives": dives, "chartRanges": chart_ranges, "images": images, "current_user": current_user}

    respond_to do |format|
      format.json { render json: json_response }
    end
  end

  def show
    dive = Dive.find(params[:id])
    images = dive.images
    videos = dive.videos

    json_response = {"dive": dive, "images": images, "videos": videos}

    respond_to do |format|
      format.json { render json: json_response }
    end
  end
end
