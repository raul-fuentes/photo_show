class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :authenticate_user!

  protect_from_forgery with: :exception

  before_action :set_cache_headers

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email) }
    end

  private

    def set_cache_headers
      response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
      response.headers["Pragma"]        = "no-cache"
      response.headers["Expires"]       = "Fri, 01 Jan 1990 00:00:00 GMT"
    end

end