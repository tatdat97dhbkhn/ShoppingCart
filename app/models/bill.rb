class Bill < ApplicationRecord
  has_many :bill_details, dependent: :destroy
  belongs_to :customer

  TRANSFER = 1
end
