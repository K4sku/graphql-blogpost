# frozen_string_literal: true

module Types
  class BaseConnection < Types::BaseObject
    # add `nodes` and `pageInfo` fields, as well as `edge_type(...)` and `node_nullable(...)` overrides
    include GraphQL::Types::Relay::ConnectionBehaviors

    field :record_count, Integer

    def record_count
      object.items.size
    end
  end
end
