# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :name, :email, presence: true
  validates :uuid, :email, uniqueness: true

  def self.create_or_update_from_bunny(payload)
    customer = find_or_initialize_by(uuid: payload['uuid'])
    customer.assign_attributes(payload.slice(*customer.attributes))
    customer.save!
  end
end