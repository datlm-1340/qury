class RegistrationsController < Devise::SessionsController
  private

  def respond_with resource, _opts = {}
    render json: {
      id: resource.id,
      access_token: current_token
    }
  end

  def respond_to_on_destroy
    head 200
  end

  def current_token
    request.env["warden-jwt_auth.token"]
  end
end
