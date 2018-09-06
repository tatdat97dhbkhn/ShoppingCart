class Product < ApplicationRecord
  belongs_to :category
  has_many :bill_details, dependent: :destroy
end
