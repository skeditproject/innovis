class BlogPost < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]

  before_save :set_slug

  validates :title, :slug, presence: true, uniqueness: true
  validates :content, presence: true

  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["content", "created_at", "id", "image", "title", "updated_at"]
  end

   def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end


  private

  def set_slug
    self.slug = title.parameterize if title.present?
  end
end
