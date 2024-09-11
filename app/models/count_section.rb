class CountSection < ApplicationRecord
  validates :number, :text, presence: true

  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    super + %w[created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    super + %w[image_attachment image_blob]
  end
end
