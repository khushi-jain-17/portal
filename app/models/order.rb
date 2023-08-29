class Order < ApplicationRecord
  belongs_to :customer
  attr_accessor :credit_card_number, :credit_card_exp_month, :credit_card_exp_year, :credit_card_cvv
  has_one :payment
  after_create :create_payment
  # Add as much as you need
  # Example: enum payment_method: %i[credit_card ach boleto]
  enum payment_method: %i[credit_card]
  def create_payment
    params = {
      order_id: 1,
      credit_card_number: "5555555555554444",
      credit_card_exp_month: "12",
      credit_card_exp_year: "2030",
      credit_card_cvv: "123"
    }
    Payment.create!(params)
  end
end
