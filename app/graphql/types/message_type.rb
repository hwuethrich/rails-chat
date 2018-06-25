class Types::MessageType < Types::BaseObject
  description 'A simple chat message.'

  field :id, ID, null: false, description: 'Unique identifier'
  field :text, String, null: false, description: 'The message text'
  field :user, Types::UserType, null: false, description: 'The user who sent the message'
  field :created_at, Types::DateTime, null: false, description: 'When the message was sent'
end
