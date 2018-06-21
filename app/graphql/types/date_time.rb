class Types::DateTime < Types::BaseScalar
  graphql_name 'DateTime'

  def self.coerce_input(value, _ctx)
    Time.zone.parse(value)
  end

  def self.coerce_result(value, _ctx)
    value.utc.iso8601
  end
end
