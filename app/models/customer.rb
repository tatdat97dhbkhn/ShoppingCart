class Customer < ApplicationRecord
  has_many :bills, dependent: :destroy
  has_many :bill_details, through: :bills, dependent: :destroy
end
