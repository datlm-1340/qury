class RegistrationsController < Devise::SessionsController
  respond_to :json

  def create
    user = User.new(registration_params)
    user.save!

    render json: {
      status: :ok,
      email: user.email,
      access_token: current_token
    }
  rescue StandardError => e
    render json: {
      status: :failed,
      errors: e.record.error_detail
    }
  end

  private

  def registration_params
    params.require(:registration).permit(User::REGISTRATION_PARAMS)
  end

  def current_token
    request.env["warden-jwt_auth.token"]
  end
end
