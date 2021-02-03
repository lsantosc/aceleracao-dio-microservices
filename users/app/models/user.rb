# frozen_string_literal: true

class User < ApplicationRecord
  after_save :publish!

  def publish!
    BunnyClient.push(bunny_data, self.class.name)
  end

  def bunny_data
    attributes.merge("name" => full_name).to_json(except: %i[id created_at updated_at])
  end

  def full_name=(name)
    name = name.split(' ')
    self[:first_name] = name.shift
    self[:last_name] = name.join(' ')
  end

  def full_name
    values_at(:first_name, :last_name).join(' ')
  end
end
