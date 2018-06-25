class Mutations::SendMessage < Mutations::BaseMutation
  # TODO: define arguments
  argument :text, String, required: true

  # TODO: define return fields
  field :message, Types::MessageType, null: true
  field :errors, [String], null: false

  def resolve(text:)
    message = current_user.say(text)
    if message.persisted?
      { message: message, errors: [] }
    else
      { message: nil, errors: message.errors.full_messages }
    end
  end
end
