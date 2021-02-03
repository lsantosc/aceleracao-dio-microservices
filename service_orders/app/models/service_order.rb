class ServiceOrder < ApplicationRecord
  belongs_to :customer

  def self.generate(params)
    customer = Customer.find_by_email(params.delete(:email))
    params[:customer] = customer
    create(params)
  end

  def start!
    update(started_at: Time.zone.now)
  end
end
