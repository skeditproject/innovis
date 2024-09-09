class CountSection < ApplicationRecord
  validates :image, :number, :text, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "image", "number", "text", "updated_at"]
  end
end
