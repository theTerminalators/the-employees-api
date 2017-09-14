class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  # before_action :restrict_access

  def restrict_access
    authenticate_or_request_with_http_token do |api_key, options|
      p options
      User.find_by(apikey: api_key, email: request.headers['X-User-Email'])
    end
  end
end
