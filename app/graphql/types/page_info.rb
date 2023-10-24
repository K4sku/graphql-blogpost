module Types
  class PageInfo < Types::BaseObject
    include GraphQL::Types::Relay::PageInfoBehaviors

    field :records_count, Integer

    def records_count
      object.items.size
    end
  end
end
