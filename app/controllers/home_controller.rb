class HomeController < ApplicationController
  def index
    url = request.original_url
    @path = URI(url).path
    
    if current_user
      redirect_to dives_path
    end
  end
end
