class BlogPost < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]

  before_save :set_slug

  validates :title, :content, presence: true
  validates :slug, uniqueness: true

  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["content", "created_at", "id", "image", "title", "updated_at"]
  end

  private

  def set_slug
    self.slug = title.parameterize if title.present?
  end
end