class HomeController < ApplicationController
  def index
    url = request.original_url
    @path = URI(url).path

    redirect_to dives_path if current_user
  end
end
