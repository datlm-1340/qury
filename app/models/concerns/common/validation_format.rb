module Common::ValidationFormat
  def error_detail
    errors.each_with_object({}) do |error, hash|
      hash[error.attribute] ||= []
      hash[error.attribute] << error.type
    end
  end
end
