class Language < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "language", "status", "updated_at"]
  end
end
