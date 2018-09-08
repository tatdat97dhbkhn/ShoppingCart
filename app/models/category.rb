class Category < ApplicationRecord
  CATEGORY_ATTRS = %w(name description image).freeze
  mount_uploader :image, PictureUploader

  has_many :products

  validates :name, presence: true,
    length: {maximum: Settings.category.length.max_name}
  validate  :image_size

  scope :availables, ->{where deleted: false}

  def destroy_actions
    update_attributes deleted: true
    "Remove successfull"
  end

  private
  def image_size
    return unless image.size > Settings.image.capacity.megabytes
    errors.add :picture, "should be less than 5MB"
  end
end
