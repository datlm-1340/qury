class ApplicationSerializer
  include JSONAPI::Serializer

  def to_json
    Oj.dump(serializable_hash, mode: :compat)
  end

  set_key_transform :camel_lower
  cache_options store: Rails.cache, namespace: 'jsonapi-serializer', expires_in: 1.hour
end
