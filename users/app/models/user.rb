# frozen_string_literal: true

class User < ApplicationRecord
  after_save :publish!

  def publish!
    BunnyClient.push(attributes.to_json, self.class.name)
  end
end
