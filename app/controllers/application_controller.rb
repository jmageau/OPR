class ApplicationController < ActionController::Base
  protect_from_forgery
  authorize_resource

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :root, alert: exception.message
  end
end
