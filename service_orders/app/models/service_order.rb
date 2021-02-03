class ServiceOrder < ApplicationRecord
  belongs_to :customer

  def self.generate(params)
    customer = Customer.find_by_email(params.delete(:email))
    params[:customer] = customer
    create(params)
  end
end
