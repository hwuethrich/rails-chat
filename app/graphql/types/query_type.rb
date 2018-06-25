class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :messages, [Types::MessageType],
        null: false,
        description: 'Returns the last 10 messages'

  def messages
    result = Message.order(created_at: :desc).limit(10)
    result.to_a.reverse
  end
end
