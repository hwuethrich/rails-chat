class Types::UserType < Types::BaseObject
  description 'A user of the chat'

  field :id, ID, null: false, description: 'Unique identifier'
  field :name, String, null: false, description: 'The name of the user'
  field :created_at, Types::DateTime, null: false, description: 'When the user was created'
  field :messages, [Types::MessageType], null: false, description: 'The users messages'
  field :system, Boolean, null: false, description: 'Is the user the system user?'
end
