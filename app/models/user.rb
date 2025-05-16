class User < ApplicationRecord
  has_many :sent_chats, class_name: "Chat", foreign_key: "sender_id"
  has_many :received_chats, class_name: "Chat", foreign_key: "receiver_id"

  def chats
    Chat.where("sender_id = ? OR receiver_id = ?", self.id, self.id)
  end

  has_many :messages
end
