# frozen_string_literal: true

class User < ApplicationRecord
  after_save :publish!

  def publish!
    BunnyClient.push(to_json(except: [:id, :created_at, :updated_at]), self.class.name)
  end
end
