class VideosController < ApplicationController

  def index
    @video = Video.make_api_call
  end

end
