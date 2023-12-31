module Types
  class EnrollmentEdge < BaseEdge
    node_type(Types::CourseType)

    field :enrollment_date, GraphQL::Types::ISO8601Date, null: true

    def enrollment_date
      object.node.enrollment_date
    end

    def node
      object.node.course
    end
  end
end
