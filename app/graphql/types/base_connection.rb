# frozen_string_literal: true

module Types
  class BaseConnection < Types::BaseObject
    include GraphQL::Types::Relay::ConnectionBehaviors
    get_field("pageInfo").type = ::Types::PageInfo.to_non_null_type

    field :record_count, Integer

    def record_count
      object.items.size
    end
  end
end
