class VideosController < ApplicationController

  def index
    if params[:q]
      render json: Video.make_api_call(params[:q])
    else
      render json: Video.make_api_call
    end
  end

end
