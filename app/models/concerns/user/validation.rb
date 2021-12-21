module User::Validation
  extend ActiveSupport::Concern
  include Common::ValidationFormat

  included do
    validates_uniqueness_of :email, case_sensitive: true
    validates_format_of :email, with: User::EMAIL_REGEX
  end
end
