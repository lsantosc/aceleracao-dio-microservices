class BunnyConsumer
  VALID_MODELS = { 'User' => 'Customer' }

  class << self
    def call!(properties, payload)
      return false unless VALID_MODELS.keys.include?(properties[:type])

      model_klass(properties[:type]).create_or_update_from_bunny(JSON.parse(payload))
    end

    private

    def model_klass(type)
      VALID_MODELS[type].constantize
    end
  end
end