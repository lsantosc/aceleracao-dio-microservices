# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true

  def self.create_or_update_from_bunny(payload)
    customer = find_or_initialize_by(email: payload['email'])
    customer.assign_attributes(payload.slice(*customer.attributes.keys))
    customer.save!
  end
end