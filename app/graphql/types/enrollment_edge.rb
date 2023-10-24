module Types
  class EnrollmentEdge < BaseEdge
    node_type(Types::CourseType)

    field :enrollment_date, GraphQL::Types::ISO8601Date, null: true

    def enrollment_date
      object.parent.enrollments.
        detect{ |enrollment| enrollment.course_id = node.id }.
        enrollment_date
    end
  end
end
