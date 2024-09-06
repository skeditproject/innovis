class Service < ApplicationRecord

  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]

  has_many :service_contents, dependent: :destroy
  validates :slug, uniqueness: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "id_value", "image", "link", "title", "updated_at"]
  end

   def self.ransackable_associations(auth_object = nil)
    ["service_content"]
  end
end
