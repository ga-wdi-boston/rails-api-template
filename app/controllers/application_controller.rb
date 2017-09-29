# frozen_string_literal: true
# Do not inherit from this class unless you know what you're doing
# See ProtectedController and OpenReadController
class ApplicationController < ActionController::API
  # Force to wants JSON for API
  before_action :api_request_settings
  def api_request_settings
    request.format = :json
  end

  AUTH_PROC = proc do |signed_token, _opts|
    token = begin
      Rails.application.message_verifier(:signed_token).verify(signed_token)
    rescue ActiveSupport::MessageVerifier::InvalidSignature
      false
    end
    User.find_by token: token
  end

  # Use Token Authentication
  include ActionController::HttpAuthentication::Token::ControllerMethods
  def authenticate
    @current_user = authenticate_or_request_with_http_token do |signed_token, _opts|
          token = begin
            Rails.application.message_verifier(:signed_token).verify(signed_token)
          rescue ActiveSupport::MessageVerifier::InvalidSignature
            false
          end
          User.find_by token: token
        end
  end

  # call from actions to get authenticated user (or nil)
  attr_reader :current_user

  # call from unauthenticated actions that want current_user if available
  def set_current_user
    # for access to authenticate method
    t = ActionController::HttpAuthentication::Token
    @current_user = t.authenticate(self, &AUTH_PROC)
  end

  # Require SSL for deployed applications
  force_ssl if: :ssl_configured?
  def ssl_configured?
    Rails.env.production?
  end

  # Use enhanced JSON serialization
  include ActionController::Serialization

  # return 404 for failed search by id
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  def record_not_found
    render json: { error: { message: 'Not Found' } }, status: :not_found
  end

  # Restrict visibility of these methods
  private :authenticate, :current_user, :set_current_user, :record_not_found
  private :ssl_configured?, :api_request_settings
end
