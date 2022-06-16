class Devise::CustomFailure < Devise::FailureApp
  def respond
    http_auth
  end
end
