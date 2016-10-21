class VideosController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    dive_id = request.check_path_parameters![:dive_id]
    @video = Video.new(dive_id: dive_id, video_url: params['video-url'])
    if @video.save
      flash[:notice] = 'Video added successfully'
      redirect_to dive_path(dive_id)
    else
      flash[:notice] = @video.errors.full_messages.join(', ')
      render :show
    end
  end
end
