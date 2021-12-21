class User < ApplicationRecord
  include User::Const
  include User::Validation

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtBlacklist

  self.skip_session_storage = %i[http_auth params_auth]
end
