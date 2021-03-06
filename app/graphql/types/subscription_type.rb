class Types::SubscriptionType < GraphQL::Schema::Object
  field :new_message, Types::MessageType,
        null: false,
        description: 'A new message as been sent'

  def new_message
    # allow subscription
  end
end
