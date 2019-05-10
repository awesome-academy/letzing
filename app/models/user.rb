class User < ApplicationRecord
  has_one :song, dependent: :destroy

  has_many :liked_songs, foreign_key: "liker_id", dependent: :destroy

  has_many :sent_messages, class_name: Message.name,
  foreign_key: :sender_id, dependent: :destroy
  has_many :receivers, through: :sent_messages

  has_many :received_messages, class_name: Message.name,
  foreign_key: :receiver_id, dependent: :destroy
  has_many :senders, through: :received_messages

  enum gender: [:male, :female]
end
