require Rails.root.join("lib", "devise", "custom_failure.rb")

Devise.setup do |config|
    config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 12

  # Configuration for :confirmable
  config.reconfirmable = true

  # Invalidates all the remember me tokens when the user signs out.
  config.expire_all_remember_me_on_sign_out = true

  # Configuration for :validatable
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  # Configuration for :recoverable
  config.reset_password_within = 6.hours

  # Navigation configuration
  config.navigational_formats = []

  # The default HTTP method used to sign out a resource. Default is :delete.
  config.sign_out_via = :delete

  # Configuration JWT
  config.jwt do |jwt|
    jwt.secret = Settings.jwt.secret
    jwt.dispatch_requests = [
        ['POST', %r{^/login$}]
      ]
      jwt.revocation_requests = [
        ['DELETE', %r{^/logout$}]
      ]
    jwt.expiration_time = Settings.jwt.expiration_time.minutes.to_i
  end

  # Custom failure
  config.warden do |manager|
    manager.failure_app = Devise::CustomFailure
  end
end
