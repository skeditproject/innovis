class InnovisPost < ApplicationRecord
  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["content", "created_at", "id", "id_value", "section_key", "title", "updated_at"]
  end
end
