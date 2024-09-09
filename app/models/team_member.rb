class TeamMember < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "designation", "id", "id_value", "image", "name", "position", "updated_at"]
  end
end
