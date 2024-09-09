class Navbar < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "link", "logo", "position", "title", "updated_at"]
  end
end
