class Customer < ApplicationRecord
  has_many :bills, dependent: :destroy
  has_many :bill_details, through: :bills, dependent: :destroy

  CUSTOMER_ATTRS = %w(email name phone address note).freeze
  accepts_nested_attributes_for :bills
end
