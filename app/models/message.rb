class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :profile

  validates_presence_of :body, :conversation_id, :profile_id

end
