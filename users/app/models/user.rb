# frozen_string_literal: true

class User < ApplicationRecord
  attr_accessor :name

  validates :first_name, :email, presence: true
  validates :email, uniqueness: true

  after_save :publish!

  def publish!
    BunnyClient.push(to_json(except: %i[id created_at updated_at], methods: %i[name]), self.class.name)
  end

  def name=(name)
    name = name.split(' ')
    self[:first_name] = name.shift
    self[:last_name] = name.join(' ')
  end

  def name
    values_at(:first_name, :last_name).join(' ')
  end
end
