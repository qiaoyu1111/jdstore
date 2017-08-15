class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  def to_param
    "#{self.id}-#{self.title}"
  end
end
