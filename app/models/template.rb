class Template < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "language", "message", "updated_at", "usecase"]
  end
end
