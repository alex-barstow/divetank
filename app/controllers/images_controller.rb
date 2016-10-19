class ImagesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    dive_id = request.check_path_parameters![:dive_id]
    @image = Image.new(dive_id: dive_id, image: params[:file])

    if @image.save
      respond_to do |format|
        format.json { render json: @image }
      end
    end
  end
end
