class HomeController < ApplicationController
  def index
    url = request.original_url
    @path = URI(url).path
  end
end
