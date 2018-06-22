class Mutations::SendMessage < Mutations::BaseMutation
  # TODO: define arguments
  argument :text, String, required: true

  # TODO: define return fields
  field :message, Types::MessageType, null: true
  field :errors, [String], null: false

  def resolve(attrs)
    message = Message.new(attrs)

    if message.save
      puts 'ATTRS', message.attributes
      RailsChatSchema.subscriptions.trigger('newMessage', {}, message)
      { message: message, errors: [] }
    else
      { message: nil, errors: message.errors.full_messages }
    end
  end
end
