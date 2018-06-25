class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :messages, inverse_of: :user, dependent: :destroy

  SYSTEM_USER = 'WhazzUp'.freeze

  def say(text)
    messages.create(text: text).tap do |message|
      RailsChatSchema.subscriptions.trigger('newMessage', {}, message) if message.persisted?
    end
  end

  def system?
    name == SYSTEM_USER
  end

  alias system system?

  def to_s
    name
  end

  def self.system_user
    @system_user ||= find_or_create_by(name: SYSTEM_USER)
  end
end
