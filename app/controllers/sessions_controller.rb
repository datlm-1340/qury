class SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    resource.access_token = current_token

    render json: SessionSerializer.new(resource).to_json
  end

  def respond_to_on_destroy
    head :ok
  end

  def current_token
    request.env["warden-jwt_auth.token"]
  end
end
