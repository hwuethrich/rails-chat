class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :messages, [Types::Message], null: false, description: 'Returns a list of messages'
  def messages
    ::Message.all.sample(5)
  end
end
