# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :students, [Types::StudentType]

      def students
        Student.all
      end
  end
end
