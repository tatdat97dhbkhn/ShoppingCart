class Product < ApplicationRecord
  belongs_to :category
  has_many :bill_details, dependent: :destroy

  PRODUCT_ATTRS = %w(name category_id description image price).freeze
  mount_uploader :image, PictureUploader

  validates :name, presence: true,
    length: {maximum: Settings.product.length.max_name}
  validates :price, presence: true
  validate  :image_size

  private
  def image_size
    return unless image.size > Settings.image.capacity.megabytes
    errors.add :picture, "should be less than 5MB"
  end
end
