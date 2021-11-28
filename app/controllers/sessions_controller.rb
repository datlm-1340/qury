class SessionsController < Devise::SessionsController
  respond_to :json
  before_action :skip_session

  private

  def respond_with _resource, _opts = {}
    render json: {
      access_token: current_token
    }
  end

  def respond_to_on_destroy
    head :ok
  end

  def current_token
    request.env["warden-jwt_auth.token"]
  end

  def skip_session
    request.session_options[:skip] = true
  end
end
