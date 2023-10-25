module Types
  class PageInfo < Types::BaseObject
    include GraphQL::Types::Relay::PageInfoBehaviors

    field :record_count_on_page, Integer

    def record_count_on_page
      object.nodes.size
    end
  end
end
