class TeamMember < ApplicationRecord

  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "designation", "id", "id_value", "image", "name", "position", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end
end
