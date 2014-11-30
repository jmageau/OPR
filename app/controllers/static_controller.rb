class StaticController < ApplicationController
  skip_authorize_resource
  def show
    authorize! params[:page], :static
    render params[:page]
  end
end
