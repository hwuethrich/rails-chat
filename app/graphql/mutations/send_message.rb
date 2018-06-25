class Mutations::SendMessage < Mutations::BaseMutation
  # TODO: define arguments
  argument :text, String, required: true

  # TODO: define return fields
  field :message, Types::MessageType, null: true
  field :errors, [String], null: false

  def resolve(attrs)
    message = current_user.messages.build(attrs)
    if message.save
      RailsChatSchema.subscriptions.trigger('newMessage', {}, message)
      { message: message, errors: [] }
    else
      { message: nil, errors: message.errors.full_messages }
    end
  end
end
