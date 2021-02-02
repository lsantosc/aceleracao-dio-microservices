# frozen_string_literal: true

class BunnyClient
  class << self
    def connect!
      @connection = Bunny.new(ENV['CLOUDAQMP_URL'])
      @connection.start
      @channel = @connection.create_channel
      @fanout = @channel.fanout('aceleracao_dio_users.out')
      @connected = true
    end

    def push(payload, type)
      connect! unless @connected
      @fanout.publish(payload, { app_id: 'aceleracao_dio_users', type: type })

      true
    end
  end
end