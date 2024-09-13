class CountSection < ApplicationRecord
  validates :number, :text, presence: true

  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "number", "text", "updated_at", "image"]
  end


  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end
end
