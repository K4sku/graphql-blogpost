module Types
  class PageInfo < Types::BaseObject
    include GraphQL::Types::Relay::PageInfoBehaviors

    field :record_count, Integer

    def record_count
      object.items.size
    end
  end
end
