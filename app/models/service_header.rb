class ServiceHeader < ApplicationRecord

  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "image", "title", "updated_at"]
  end
end
