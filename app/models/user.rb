class User < ApplicationRecord
  validates :name, presence: true
  has_many :messages, inverse_of: :user, dependent: :destroy

  def say(text)
    messages.create!(text: text)
  end

  def to_s
    name
  end

  def self.system_user
    @system_user ||= find_or_create_by(name: 'WhazzUp')
  end
end
