class VideosController < ApplicationController

  def index
    render json: Video.make_api_call
  end

end
