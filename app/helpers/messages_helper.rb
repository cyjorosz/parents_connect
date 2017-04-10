module MessagesHelper
  def self_or_other(message)
    message.profile == current_user.profile ? "self" : "other"
  end

  def message_interlocutor(message)
    message.profile == message.conversation.sender ? message.conversation.sender : message.conversation.recipient
  end
end