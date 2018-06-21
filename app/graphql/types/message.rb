class Types::Message < Types::BaseObject
  field :id, ID, null: false
  field :text, String, null: false
  field :created_at, Types::DateTime, null: false
end
