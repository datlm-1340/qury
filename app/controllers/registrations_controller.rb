class RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: RegistrationSerializer.new(resource).to_json
  end
end
